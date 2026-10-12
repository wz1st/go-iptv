.class public Lcom/l/j;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lcom/g/a/c/c/a;

    invoke-direct {v0}, Lcom/g/a/c/c/a;-><init>()V

    const-string v1, "/"

    new-instance v2, Lcom/l/b;

    const-string v3, "index.html"

    invoke-direct {v2, v3}, Lcom/l/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/index.html"

    new-instance v2, Lcom/l/b;

    const-string v3, "index.html"

    invoke-direct {v2, v3}, Lcom/l/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/bandr.html"

    new-instance v2, Lcom/l/b;

    const-string v3, "bandr.html"

    invoke-direct {v2, v3}, Lcom/l/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/testurl.html"

    new-instance v2, Lcom/l/b;

    const-string v3, "testurl.html"

    invoke-direct {v2, v3}, Lcom/l/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/bootstrap.min.css"

    new-instance v2, Lcom/l/b;

    const-string v3, "bootstrap.min.css"

    invoke-direct {v2, v3}, Lcom/l/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/toastr.css"

    new-instance v2, Lcom/l/b;

    const-string v3, "toastr.css"

    invoke-direct {v2, v3}, Lcom/l/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/toastr.js"

    new-instance v2, Lcom/l/b;

    const-string v3, "toastr.js"

    invoke-direct {v2, v3}, Lcom/l/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/bootstrap.min.js"

    new-instance v2, Lcom/l/b;

    const-string v3, "bootstrap.min.js"

    invoke-direct {v2, v3}, Lcom/l/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/jquery.min.js"

    new-instance v2, Lcom/l/b;

    const-string v3, "jquery.min.js"

    invoke-direct {v2, v3}, Lcom/l/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/bundle.js"

    new-instance v2, Lcom/l/b;

    const-string v3, "bundle.js"

    invoke-direct {v2, v3}, Lcom/l/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/api/categories.json"

    new-instance v2, Lcom/l/f;

    invoke-direct {v2}, Lcom/l/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/api/category.json"

    new-instance v2, Lcom/l/h;

    invoke-direct {v2}, Lcom/l/h;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->b(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/api/delete.json"

    new-instance v2, Lcom/l/c;

    invoke-direct {v2}, Lcom/l/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/api/testUrl.json"

    new-instance v2, Lcom/l/i;

    invoke-direct {v2}, Lcom/l/i;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->b(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/api/restore.json"

    new-instance v2, Lcom/l/g;

    invoke-direct {v2}, Lcom/l/g;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->b(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/api/epg.json"

    new-instance v2, Lcom/l/d;

    invoke-direct {v2}, Lcom/l/d;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->b(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const-string v1, "/api/getepg.json"

    new-instance v2, Lcom/l/e;

    invoke-direct {v2}, Lcom/l/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c/a;->a(Ljava/lang/String;Lcom/g/a/c/c/g;)V

    const/16 v1, 0x301b

    invoke-virtual {v0, v1}, Lcom/g/a/c/c/a;->b(I)Lcom/g/a/e;

    return-void
.end method
