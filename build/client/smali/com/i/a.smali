.class public Lcom/i/a;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/i/a;->a:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/i/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/i/a;->b:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/i/a;->b:J

    iget-object v0, p0, Lcom/i/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/i/a;->a:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/i/a;->b:J

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/i/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/i/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    if-nez p5, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/i/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p3, v0, p5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    goto :goto_0
.end method
