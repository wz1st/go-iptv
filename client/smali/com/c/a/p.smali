.class public Lcom/c/a/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/c/a/f;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/c/a/f;
    .locals 1

    sget-object v0, Lcom/c/a/p;->a:Lcom/c/a/f;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/c/a/p;->b(Landroid/content/Context;)Lcom/c/a/f;

    move-result-object v0

    sput-object v0, Lcom/c/a/p;->a:Lcom/c/a/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/c/a/p;->a:Lcom/c/a/f;

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/c/a/f;
    .locals 4

    new-instance v0, Lcom/c/a/f$a;

    invoke-direct {v0, p0}, Lcom/c/a/f$a;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x20000000

    invoke-virtual {v0, v2, v3}, Lcom/c/a/f$a;->a(J)Lcom/c/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/f$a;->a()Lcom/c/a/f;

    move-result-object v0

    return-object v0
.end method
