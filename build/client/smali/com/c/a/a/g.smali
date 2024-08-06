.class public Lcom/c/a/a/g;
.super Lcom/c/a/a/e;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Lcom/c/a/a/e;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max size must be positive number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/c/a/a/g;->a:J

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;JI)Z
    .locals 2

    iget-wide v0, p0, Lcom/c/a/a/g;->a:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
