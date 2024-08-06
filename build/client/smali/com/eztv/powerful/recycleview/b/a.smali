.class public Lcom/eztv/powerful/recycleview/b/a;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/eztv/powerful/recycleview/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/eztv/powerful/recycleview/b/a;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u7535\u89c6\u5267"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/tvplay2level/?filter=true&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u7535\u5f71"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/movie2level/?filter=true&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u7efc\u827a"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/tvshow2level/?filter=true&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u52a8\u6f2b"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/comic2level/?filter=true&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u52a8\u753b\u7247"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/channel/commonapi/shaoer2level/?filter=true&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u89c6\u300f\u53e4\u88c5"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/tvplay2level/?filter=true&type=\u53e4\u88c5&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u89c6\u300f\u6b66\u4fa0"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/tvplay2level/?filter=true&type=\u6b66\u4fa0&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u89c6\u300f\u8a00\u60c5"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/tvplay2level/?filter=true&type=\u8a00\u60c5&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u89c6\u300f\u559c\u5267"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/tvplay2level/?filter=true&type=\u559c\u5267&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u89c6\u300f\u7f51\u5267"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/tvplay2level/?filter=true&type=\u7f51\u5267&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u89c6\u300f\u8c0d\u6218"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/tvplay2level/?filter=true&type=\u8c0d\u6218&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u89c6\u300f\u519b\u65c5"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/tvplay2level/?filter=true&type=\u519b\u65c5&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u5f71\u300f\u60ca\u609a"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/movie2level/?filter=true&type=\u60ca\u609a&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u5f71\u300f\u72af\u7f6a"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/movie2level/?filter=true&type=\u72af\u7f6a&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u5f71\u300f\u559c\u5267"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/movie2level/?filter=true&type=\u559c\u5267&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u5f71\u300f\u79d1\u5e7b"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/movie2level/?filter=true&type=\u79d1\u5e7b&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u5f71\u300f\u6218\u4e89"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/movie2level/?filter=true&type=\u6218\u4e89&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u5f71\u300f\u6b66\u4fa0"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/movie2level/?filter=true&type=\u6b66\u4fa0&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u5f71\u300f\u53e4\u88c5"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/movie2level/?filter=true&type=\u53e4\u88c5&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/eztv/powerful/recycleview/b/b;

    invoke-direct {v0}, Lcom/eztv/powerful/recycleview/b/b;-><init>()V

    const-string v1, "\u300e\u7535\u5f71\u300f\u5947\u5e7b"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/b/b;->a(I)V

    const-string v1, "http://v.baidu.com/commonapi/movie2level/?filter=true&type=\u5947\u5e7b&"

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/recycleview/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/recycleview/b/a;->add(Ljava/lang/Object;)Z

    return-void
.end method
