.class public final Lcom/b/a/c/b/b/f;
.super Lcom/b/a/c/b/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "image_manager_disk_cache"

    const-wide/32 v2, 0xfa00000

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/b/a/c/b/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/b/a/c/b/b/f$1;

    invoke-direct {v0, p1, p2}, Lcom/b/a/c/b/b/f$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/b/a/c/b/b/d;-><init>(Lcom/b/a/c/b/b/d$a;J)V

    return-void
.end method
