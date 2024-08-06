.class public final Lcom/b/a/c/d/e/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/b/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/i",
            "<",
            "Lcom/b/a/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/b/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/i",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    sget-object v1, Lcom/b/a/c/b;->c:Lcom/b/a/c/b;

    invoke-static {v0, v1}, Lcom/b/a/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/c/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/c/d/e/i;->a:Lcom/b/a/c/i;

    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/c/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/c/d/e/i;->b:Lcom/b/a/c/i;

    return-void
.end method
