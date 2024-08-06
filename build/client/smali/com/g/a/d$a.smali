.class final Lcom/g/a/d$a;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/g/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
