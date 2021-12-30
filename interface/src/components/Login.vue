<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-19 14:30:24
 * @LastEditTime: 2021-12-28 21:24:57
-->
<template>
  <div id="poster">
    <div class="cont">
      <!-- 登陆界面 -->
      <div class="form sign-in">
        <h2>登录</h2>
        <label>
          <span>用户名</span>
          <input
            type="email"
            name="email"
            v-model="loginForm.username"
            placeholder="请输入用户名"
          />
        </label>
        <label>
          <span>密码</span>
          <input
            type="password"
            name="password"
            v-model="loginForm.password"
            placeholder="请输入密码"
          />
        </label>
        <button class="submit" type="button" @click="login">登录</button>
        <p class="forgot-pass" @click="forgetPWD">-v- 忘记密码 -v-</p>

        <div class="social-media">
          <ul>
            <li><img @click="tempLogin" src="../assets/images/qq.png" /></li>
            <li>
              <img @click="tempLogin" src="../assets/images/wechat.png" />
            </li>
            <li>
              <img @click="tempLogin" src="../assets/images/github.png" />
            </li>
            <li>
              <img @click="tempLogin" src="../assets/images/facebook.png" />
            </li>
          </ul>
        </div>
      </div>

      <div class="sub-cont">
        <div class="img">
          <div class="img-text m-up">
            <h2>图书管理系统</h2>
            <p>这是我们的 J2EE 项目</p>
            <ul>
              <li v-for="item in authors">{{ item }}</li>
            </ul>
          </div>
          <div class="img-text m-in">
            <h2>关于项目</h2>
            <p>在这个项目中，我们还用了这些开源技术:</p>
            <ul>
              <li v-for="item in skills">{{ item }}</li>
            </ul>
          </div>
          <div id="img-btn" @click="change">
            <span class="m-up">注册</span>
            <span class="m-in">登录</span>
          </div>
        </div>

        <div class="form sign-up">
          <h2>注册</h2>
          <label>
            <span>用户名</span>
            <input
              type="text"
              v-model="registerForm.username"
              placeholder="取个名字"
            />
          </label>
          <label>
            <span>学号</span>
            <input
              type="text"
              v-model="registerForm.id"
              placeholder="你的12位学号"
            />
          </label>
          <label>
            <span>邮箱</span>
            <input
              type="email"
              v-model="registerForm.email"
              placeholder="您的邮箱"
            />
          </label>
          <label>
            <span>密码</span>
            <input
              type="password"
              v-model="registerForm.password"
              placeholder="密码(5-20位)"
            />
          </label>
          <label>
            <span>确认密码</span>
            <input
              type="password"
              v-model="registerForm.confirmPassword"
              placeholder="两次密码确保相同"
            />
          </label>
          <button type="button" class="submit" @click="register">注册</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Login",
  data() {
    return {
      loginForm: {
        username: "",
        password: ""
      },
      registerForm: {
        username: "",
        password: "",
        email: "",
        confirmPassword: "",
        id: ""
      },
      responseResult: [],
      authors: [
        "吴鼎 201983290194",
        "徐淳 201983290424",
        "潘孝飞 201983290430",
        "汤硕 201983290013"
      ],
      skills: [
        "Html,CSS,JavaScript",
        "Vue3",
        "Element UI",
        "SpringBoot",
        "axios"
      ]
    };
  },
  methods: {
    login() {
      if (this.loginForm.username != "" && this.loginForm.password != "") {
        var _this = this;
        console.log(this.$store.state);
        this.$axios
          .post("/login", {
            username: this.loginForm.username,
            password: this.loginForm.password
          })
          .then(successResponse => {
            if (successResponse.data.code == 200) {
              _this.$store.commit("login", _this.loginForm);
              var path = this.$route.query.redirect;
              this.$router.replace({
                path: path === "/" || path === undefined ? "/index" : path
              });
            } else if (successResponse.data.code == 400) {
              alert("登陆失败！");
            }
          })
          .catch(failResponse => {
            alert("未知登录错误!");
          });
      } else {
        alert("用户名与密码不为空! \n听见没有???");
      }
    },
    register() {
      if (!this.checkRegister()) {
        this.$axios
          .post("/register", this.registerForm)
          .then(successResponse => {
            if (successResponse.data.code === 200) {
              this.$router.replace({ path: "/index" });
            } else if (successResponse.data.code === 400) {
              alert("这个学号或邮箱已被注册!!!");
            }
          })
          .catch(failResponse => {});
      } else {
        alert(this.checkRegister() + "\n请重新注册!!");
      }
    },
    checkRegister() {
      let message = "";
      if (this.registerForm.username === "") message = "用户名不为空";
      else if (
        this.registerForm.username.length < 2 ||
        this.registerForm.username.length > 20
      )
        message = "用户名必须在 2-20 个字符之间";
      else if (this.registerForm.id === "") message = "学号不为空";
      else if (this.registerForm.id.length != 12) message = "学号必须为12位";
      else if (this.registerForm.email === "") message = "邮箱不为空";
      else if (this.registerForm.email.search("@") == -1)
        message = "这不是有效的邮箱吧";
      else if (this.registerForm.password === "") message = "密码不为空";
      else if (this.registerForm.password.length < 10)
        message = "密码长度至少为 10 ";
      else if (this.registerForm.confirmPassword != this.registerForm.password)
        message = "两次密码不匹配";
      return message;
    },
    // 登陆注册切换函数
    change() {
      document.querySelector(".cont").classList.toggle("s-signup");
    },
    forgetPWD() {
      alert("暂时未提供该功能! \n欸嘿欸嘿欸嘿欸嘿欸嘿");
    },
    tempLogin() {
      alert("暂时未提供从其他平台登录的功能 \n没钱，没人脉，惨!!!");
    }
  }
};
</script>

<style scoped>
#poster {
  width: 100vw;
  height: 100vh;
  text-align: center;
  display: flex;
  justify-content: center;
  align-items: center;
  background: -webkit-linear-gradient(left, #de6262, #ffb88c);
}

input,
button {
  border: none;
  outline: none;
  background: none;
}

.cont {
  overflow: hidden;
  position: relative;
  width: 900px;
  height: 550px;
  background: #fff;
  box-shadow: 0 19px 38px rgba(0, 0, 0, 0.3), 0 15px 12px rgba(0, 0, 0, 0.22);
}

.form {
  position: relative;
  width: 640px;
  height: 100%;
  padding: 50px 0px;
  text-align: center;
  -webkit-transition: -webkit-transform 1.2s ease-in-out;
  transition: -webkit-transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
  background: #fff;
}

h2 {
  width: 100%;
  font-size: 30px;
  text-align: center;
}

label {
  display: block;
  width: 260px;
  margin: 15px auto 0;
  text-align: center;
}

label span {
  font-size: 16px;
  font-weight: 600;
  color: #505f75;
  text-transform: uppercase;
  letter-spacing: 0.5ex;
}

input {
  display: block;
  width: 100%;
  margin-top: 5px;
  font-size: 16px;
  padding-bottom: 5px;
  border-bottom: 1px solid rgba(109, 93, 93, 0.4);
  text-align: center;
  font-family: "Nunito", sans-serif;
}

button {
  display: block;
  margin: 0 auto;
  width: 260px;
  height: 36px;
  border-radius: 30px;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
}

.submit {
  margin-top: 25px;
  margin-bottom: 30px;
  text-transform: uppercase;
  font-weight: 600;
  font-family: "Nunito", sans-serif;
  background: -webkit-linear-gradient(
    left,
    rgb(54, 155, 206),
    rgb(66, 95, 155)
  );
}

.submit:hover {
  background: -webkit-linear-gradient(
    left,
    rgb(66, 95, 155),
    rgb(54, 155, 206)
  );
}

.forgot-pass {
  margin-top: 15px;
  text-align: center;
  font-size: 14px;
  font-weight: 600;
  color: #0c0101;
  cursor: pointer;
}

.forgot-pass:hover {
  color: red;
}

.social-media {
  width: 100%;
  text-align: center;
  margin-top: 20px;
}

.social-media ul {
  list-style: none;
}

.social-media ul li {
  display: inline-block;
  cursor: pointer;
  margin: 25px 15px;
}

.social-media img {
  width: 40px;
  height: 40px;
}

.sub-cont {
  overflow: hidden;
  position: absolute;
  left: 640px;
  top: 0;
  width: 900px;
  height: 100%;
  padding-left: 260px;
  background: #fff;
  -webkit-transition: -webkit-transform 1.2s ease-in-out;
  transition: -webkit-transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out;
}

.cont.s-signup .sub-cont {
  -webkit-transform: translate3d(-640px, 0, 0);
  transform: translate3d(-640px, 0, 0);
}

.img {
  overflow: hidden;
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 260px;
  height: 100%;
  padding-top: 360px;
}

.img:before {
  content: "";
  position: absolute;
  right: 0;
  top: 0;
  width: 900px;
  height: 100%;
  background-image: url(../assets/images/bg.jpg);
  background-size: cover;
  transition: -webkit-transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
}

.img:after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.3);
}

.cont.s-signup .img:before {
  -webkit-transform: translate3d(640px, 0, 0);
  transform: translate3d(640px, 0, 0);
}

.img-text {
  z-index: 2;
  position: absolute;
  left: 0;
  top: 50px;
  width: 100%;
  text-align: center;
  color: #fff;
  -webkit-transition: -webkit-transform 1.2s ease-in-out;
  transition: -webkit-transform 1.2s ease-in-out;
  transition: transform 1.2s ease-in-out, -webkit-transform 1.2s ease-in-out;
}

.img-text h2 {
  margin-bottom: 20px;
  font-weight: 500;
}

.img-text p {
  font-size: 16px;
  line-height: 1.5;
  width: 200px;
  padding: 0 30px 0 30px;
}

.img-text ul {
  margin-left: 20px;
  font-size: 14px;
  text-align: left;
  line-height: 1.5;
  width: 200px;
  padding: 0 40px;
}

.cont.s-signup .img-text.m-in {
  -webkit-transform: translateX(0);
  transform: translateX(0);
}

.cont.s-signup .img-text.m-up {
  -webkit-transform: translateX(520px);
  transform: translateX(520px);
}

.img-text.m-in {
  -webkit-transform: translateX(-520px);
  transform: translateX(-520px);
}

.sign-in {
  padding-top: 30px;
  -webkit-transition-timing-function: ease-out;
  transition-timing-function: ease-out;
}

.sign-up {
  padding-top: 15px;
  -webkit-transform: translate3d(-900px, 0, 0);
  transform: translate3d(-900px, 0, 0);
}

.cont.s-signup .sign-in {
  -webkit-transition-timing-function: ease-in-out;
  transition-timing-function: ease-in-out;
  -webkit-transition-duration: 1.2s;
  transition-duration: 1.2s;
  -webkit-transform: translate3d(640px, 0, 0);
  transform: translate3d(640px, 0, 0);
}

#img-btn {
  overflow: hidden;
  z-index: 2;
  position: relative;
  width: 100px;
  height: 36px;
  margin: 0 auto;
  background: transparent;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
}

#img-btn:after {
  content: "";
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 95%;
  height: 90%;
  border: 2px solid #fff;
  border-radius: 30px;
}

#img-btn span {
  position: absolute;
  left: 0;
  top: 0;
  display: -webkit-box;
  display: flex;
  -webkit-box-pack: center;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  -webkit-transition: -webkit-transform 1.2s;
  transition: -webkit-transform 1.2s;
  transition: transform 1.2s;
  transition: transform 1.2s, -webkit-transform 1.2s;
}

#img-btn span.m-in {
  -webkit-transform: translateY(-72px);
  transform: translateY(-72px);
}

.cont.s-signup #img-btn span.m-in {
  -webkit-transform: translateY(0);
  transform: translateY(0);
}

.cont.s-signup #img-btn span.m-up {
  -webkit-transform: translateY(72px);
  transform: translateY(72px);
}

.cont.s-signup .sign-up {
  -webkit-transform: translate3d(0, 0, 0);
  transform: translate3d(0, 0, 0);
}
</style>
