.class final La/a/c/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/j;

.field private b:I

.field private final c:Lb/d;


# direct methods
.method public constructor <init>(Lb/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/j;

    new-instance v1, La/a/c/ac;

    invoke-direct {v1, p0, p1}, La/a/c/ac;-><init>(La/a/c/ab;Lb/m;)V

    new-instance v2, La/a/c/ad;

    invoke-direct {v2, p0}, La/a/c/ad;-><init>(La/a/c/ab;)V

    invoke-direct {v0, v1, v2}, Lb/j;-><init>(Lb/m;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, La/a/c/ab;->a:Lb/j;

    iget-object v0, p0, La/a/c/ab;->a:Lb/j;

    invoke-static {v0}, Lb/k;->a(Lb/m;)Lb/d;

    move-result-object v0

    iput-object v0, p0, La/a/c/ab;->c:Lb/d;

    return-void
.end method

.method static synthetic a(La/a/c/ab;)I
    .locals 1

    iget v0, p0, La/a/c/ab;->b:I

    return v0
.end method

.method static synthetic a(La/a/c/ab;I)I
    .locals 0

    iput p1, p0, La/a/c/ab;->b:I

    return p1
.end method

.method private b()Lb/e;
    .locals 4

    iget-object v0, p0, La/a/c/ab;->c:Lb/d;

    invoke-interface {v0}, Lb/d;->m()I

    move-result v0

    iget-object v1, p0, La/a/c/ab;->c:Lb/d;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lb/d;->d(J)Lb/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;"
        }
    .end annotation

    iget v0, p0, La/a/c/ab;->b:I

    add-int/2addr v0, p1

    iput v0, p0, La/a/c/ab;->b:I

    iget-object v0, p0, La/a/c/ab;->c:Lb/d;

    invoke-interface {v0}, Lb/d;->m()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numberOfPairs < 0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x400

    if-le v1, v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numberOfPairs > 1024: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-direct {p0}, La/a/c/ab;->b()Lb/e;

    move-result-object v3

    invoke-virtual {v3}, Lb/e;->d()Lb/e;

    move-result-object v3

    invoke-direct {p0}, La/a/c/ab;->b()Lb/e;

    move-result-object v4

    invoke-virtual {v3}, Lb/e;->c()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "name.size == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v5, La/a/c/f;

    invoke-direct {v5, v3, v4}, La/a/c/f;-><init>(Lb/e;Lb/e;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, La/a/c/ab;->b:I

    if-lez v0, :cond_4

    iget-object v0, p0, La/a/c/ab;->a:Lb/j;

    invoke-virtual {v0}, Lb/j;->b()Z

    iget v0, p0, La/a/c/ab;->b:I

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "compressedLimit > 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/a/c/ab;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v2
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, La/a/c/ab;->c:Lb/d;

    invoke-interface {v0}, Lb/d;->close()V

    return-void
.end method
