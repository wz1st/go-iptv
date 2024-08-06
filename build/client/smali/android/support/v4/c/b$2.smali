.class final Landroid/support/v4/c/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/c/b;->a(Landroid/content/Context;Landroid/support/v4/c/a;Landroid/support/v4/content/a/f$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/c/c$a",
        "<",
        "Landroid/support/v4/c/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/content/a/f$a;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/support/v4/content/a/f$a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/c/b$2;->a:Landroid/support/v4/content/a/f$a;

    iput-object p2, p0, Landroid/support/v4/c/b$2;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/c/b$c;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/c/b$2;->a:Landroid/support/v4/content/a/f$a;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v4/c/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/a/f$a;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/support/v4/c/b$c;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c/b$2;->a:Landroid/support/v4/content/a/f$a;

    iget-object v1, p1, Landroid/support/v4/c/b$c;->a:Landroid/graphics/Typeface;

    iget-object v2, p0, Landroid/support/v4/c/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/c/b$2;->a:Landroid/support/v4/content/a/f$a;

    iget v1, p1, Landroid/support/v4/c/b$c;->b:I

    iget-object v2, p0, Landroid/support/v4/c/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/a/f$a;->a(ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/c/b$c;

    invoke-virtual {p0, p1}, Landroid/support/v4/c/b$2;->a(Landroid/support/v4/c/b$c;)V

    return-void
.end method
