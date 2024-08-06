.class public final Lcom/b/a/h$b;
.super Lcom/b/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Failed to find image header parser."

    invoke-direct {p0, v0}, Lcom/b/a/h$a;-><init>(Ljava/lang/String;)V

    return-void
.end method
