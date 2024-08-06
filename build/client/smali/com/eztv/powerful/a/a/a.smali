.class public Lcom/eztv/powerful/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/eztv/powerful/a/c$d;

.field private static b:Lcom/eztv/powerful/a/c$c;

.field private static c:Lcom/eztv/powerful/a/c$b;

.field private static d:Lcom/eztv/powerful/a/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/eztv/powerful/a/a/a;->a:Lcom/eztv/powerful/a/c$d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eztv/powerful/a/a/a;->a:Lcom/eztv/powerful/a/c$d;

    invoke-interface {v0}, Lcom/eztv/powerful/a/c$d;->a()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/eztv/powerful/a/a/a;->d:Lcom/eztv/powerful/a/c$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eztv/powerful/a/a/a;->d:Lcom/eztv/powerful/a/c$a;

    invoke-interface {v0, p0}, Lcom/eztv/powerful/a/c$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/eztv/powerful/a/a/a;->b:Lcom/eztv/powerful/a/c$c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eztv/powerful/a/a/a;->b:Lcom/eztv/powerful/a/c$c;

    invoke-interface {v0}, Lcom/eztv/powerful/a/c$c;->a()V

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/eztv/powerful/a/a/a;->c:Lcom/eztv/powerful/a/c$b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eztv/powerful/a/a/a;->c:Lcom/eztv/powerful/a/c$b;

    invoke-interface {v0}, Lcom/eztv/powerful/a/c$b;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/a/c$a;)V
    .locals 0

    sput-object p1, Lcom/eztv/powerful/a/a/a;->d:Lcom/eztv/powerful/a/c$a;

    return-void
.end method

.method public a(Lcom/eztv/powerful/a/c$b;)V
    .locals 0

    sput-object p1, Lcom/eztv/powerful/a/a/a;->c:Lcom/eztv/powerful/a/c$b;

    return-void
.end method

.method public a(Lcom/eztv/powerful/a/c$c;)V
    .locals 0

    sput-object p1, Lcom/eztv/powerful/a/a/a;->b:Lcom/eztv/powerful/a/c$c;

    return-void
.end method

.method public a(Lcom/eztv/powerful/a/c$d;)V
    .locals 0

    sput-object p1, Lcom/eztv/powerful/a/a/a;->a:Lcom/eztv/powerful/a/c$d;

    return-void
.end method
