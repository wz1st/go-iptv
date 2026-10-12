.class public Lcom/b/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field a:[I

.field b:I

.field c:I

.field d:Lcom/b/a/b/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b/c;->a:[I

    iput v1, p0, Lcom/b/a/b/c;->b:I

    iput v1, p0, Lcom/b/a/b/c;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/c;->e:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/b/c;->m:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/b/a/b/c;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/b/a/b/c;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/b/a/b/c;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/b/a/b/c;->b:I

    return v0
.end method
