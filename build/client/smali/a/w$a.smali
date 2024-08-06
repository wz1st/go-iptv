.class public La/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:La/r;

.field private b:Ljava/lang/String;

.field private c:La/q$a;

.field private d:La/x;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, La/w$a;->b:Ljava/lang/String;

    new-instance v0, La/q$a;

    invoke-direct {v0}, La/q$a;-><init>()V

    iput-object v0, p0, La/w$a;->c:La/q$a;

    return-void
.end method

.method private constructor <init>(La/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, La/w;->a(La/w;)La/r;

    move-result-object v0

    iput-object v0, p0, La/w$a;->a:La/r;

    invoke-static {p1}, La/w;->b(La/w;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/w$a;->b:Ljava/lang/String;

    invoke-static {p1}, La/w;->c(La/w;)La/x;

    move-result-object v0

    iput-object v0, p0, La/w$a;->d:La/x;

    invoke-static {p1}, La/w;->d(La/w;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, La/w$a;->e:Ljava/lang/Object;

    invoke-static {p1}, La/w;->e(La/w;)La/q;

    move-result-object v0

    invoke-virtual {v0}, La/q;->a()La/q$a;

    move-result-object v0

    iput-object v0, p0, La/w$a;->c:La/q$a;

    return-void
.end method

.method synthetic constructor <init>(La/w;B)V
    .locals 0

    invoke-direct {p0, p1}, La/w$a;-><init>(La/w;)V

    return-void
.end method

.method static synthetic a(La/w$a;)La/r;
    .locals 1

    iget-object v0, p0, La/w$a;->a:La/r;

    return-object v0
.end method

.method static synthetic b(La/w$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/w$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(La/w$a;)La/q$a;
    .locals 1

    iget-object v0, p0, La/w$a;->c:La/q$a;

    return-object v0
.end method

.method static synthetic d(La/w$a;)La/x;
    .locals 1

    iget-object v0, p0, La/w$a;->d:La/x;

    return-object v0
.end method

.method static synthetic e(La/w$a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/w$a;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(La/q;)La/w$a;
    .locals 1

    invoke-virtual {p1}, La/q;->a()La/q$a;

    move-result-object v0

    iput-object v0, p0, La/w$a;->c:La/q$a;

    return-object p0
.end method

.method public a(La/r;)La/w$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, La/w$a;->a:La/r;

    return-object p0
.end method

.method public a(Ljava/lang/String;)La/w$a;
    .locals 1

    iget-object v0, p0, La/w$a;->c:La/q$a;

    invoke-virtual {v0, p1}, La/q$a;->b(Ljava/lang/String;)La/q$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;La/x;)La/w$a;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, La/a/d/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, La/a/d/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, La/w$a;->b:Ljava/lang/String;

    iput-object p2, p0, La/w$a;->d:La/x;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)La/w$a;
    .locals 1

    iget-object v0, p0, La/w$a;->c:La/q$a;

    invoke-virtual {v0, p1, p2}, La/q$a;->c(Ljava/lang/String;Ljava/lang/String;)La/q$a;

    return-object p0
.end method

.method public a()La/w;
    .locals 2

    iget-object v0, p0, La/w$a;->a:La/r;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, La/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/w;-><init>(La/w$a;B)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)La/w$a;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, La/r;->c(Ljava/lang/String;)La/r;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, La/w$a;->a(La/r;)La/w$a;

    move-result-object v0

    return-object v0
.end method
