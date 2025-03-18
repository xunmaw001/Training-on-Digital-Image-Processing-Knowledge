const base = {
    get() {
                return {
            url : "http://localhost:8080/ssmfz666/",
            name: "ssmfz666",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmfz666/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "数字图像处理知识训练"
        } 
    }
}
export default base
