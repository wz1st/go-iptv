.class public Lcom/g/a/o;
.super Lcom/g/a/g;


# static fields
.field static final synthetic h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/o;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/g/a/k;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/g/a/g;-><init>(Lcom/g/a/k;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/g/a/o;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/g/a/h;)V
    .locals 2

    invoke-virtual {p0}, Lcom/g/a/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/g/a/o;->a()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/g/a/o;->b(Lcom/g/a/h;)Lcom/g/a/h;

    move-result-object v0

    sget-boolean v1, Lcom/g/a/o;->h:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Lcom/g/a/h;->h()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/g/a/g;->a(Lcom/g/a/h;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/g/a/h;->k()V

    goto :goto_0
.end method

.method public b(Lcom/g/a/h;)Lcom/g/a/h;
    .locals 0

    return-object p1
.end method
