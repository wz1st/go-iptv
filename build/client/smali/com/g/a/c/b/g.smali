.class public Lcom/g/a/c/b/g;
.super Lcom/g/a/n;


# static fields
.field static final synthetic f:Z


# instance fields
.field private d:Ljava/util/zip/Inflater;

.field g:Lcom/g/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/c/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/c/b/g;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, v0}, Lcom/g/a/c/b/g;-><init>(Ljava/util/zip/Inflater;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/Inflater;)V
    .locals 1

    invoke-direct {p0}, Lcom/g/a/n;-><init>()V

    new-instance v0, Lcom/g/a/h;

    invoke-direct {v0}, Lcom/g/a/h;-><init>()V

    iput-object v0, p0, Lcom/g/a/c/b/g;->g:Lcom/g/a/h;

    iput-object p1, p0, Lcom/g/a/c/b/g;->d:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/i;Lcom/g/a/h;)V
    .locals 7

    :try_start_0
    invoke-virtual {p2}, Lcom/g/a/h;->l()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/g/a/h;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Lcom/g/a/h;->n()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p2}, Lcom/g/a/h;->m()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lcom/g/a/c/b/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Inflater;->setInput([BII)V

    :cond_0
    iget-object v3, p0, Lcom/g/a/c/b/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/g/a/c/b/g;->g:Lcom/g/a/h;

    invoke-virtual {v3, v0}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    sget-boolean v3, Lcom/g/a/c/b/g;->f:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/g/a/c/b/g;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/g/a/h;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Lcom/g/a/c/b/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/g/a/c/b/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    invoke-static {v1}, Lcom/g/a/h;->a(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/g/a/c/b/g;->g:Lcom/g/a/h;

    invoke-virtual {v1, v0}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    iget-object v0, p0, Lcom/g/a/c/b/g;->g:Lcom/g/a/h;

    invoke-static {p0, v0}, Lcom/g/a/t;->a(Lcom/g/a/i;Lcom/g/a/h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected final a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/g/a/c/b/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/g/a/c/b/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/g/a/c/b/e;

    const-string v1, "data still remaining in inflater"

    invoke-direct {v0, v1, p1}, Lcom/g/a/c/b/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1}, Lcom/g/a/n;->a(Ljava/lang/Exception;)V

    return-void
.end method
