.class public Lcom/j/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/graphics/Typeface;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/j/a/c;->c()I

    move-result v0

    iput v0, p0, Lcom/j/a/c$a;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/j/a/c$a;->c:I

    const/16 v0, 0xe6

    iput v0, p0, Lcom/j/a/c$a;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/j/a/c$a;->e:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/j/a/c$a;->f:I

    iput-object p1, p0, Lcom/j/a/c$a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/j/a/c$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/j/a/c$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/j/a/c$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/j/a/c$a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/j/a/c$a;)I
    .locals 1

    iget v0, p0, Lcom/j/a/c$a;->c:I

    return v0
.end method

.method static synthetic d(Lcom/j/a/c$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/j/a/c$a;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/j/a/c$a;)I
    .locals 1

    iget v0, p0, Lcom/j/a/c$a;->e:I

    return v0
.end method

.method static synthetic f(Lcom/j/a/c$a;)I
    .locals 1

    iget v0, p0, Lcom/j/a/c$a;->b:I

    return v0
.end method

.method static synthetic g(Lcom/j/a/c$a;)I
    .locals 1

    iget v0, p0, Lcom/j/a/c$a;->i:I

    return v0
.end method

.method static synthetic h(Lcom/j/a/c$a;)I
    .locals 1

    iget v0, p0, Lcom/j/a/c$a;->g:I

    return v0
.end method

.method static synthetic i(Lcom/j/a/c$a;)I
    .locals 1

    iget v0, p0, Lcom/j/a/c$a;->d:I

    return v0
.end method

.method static synthetic j(Lcom/j/a/c$a;)I
    .locals 1

    iget v0, p0, Lcom/j/a/c$a;->f:I

    return v0
.end method

.method static synthetic k(Lcom/j/a/c$a;)I
    .locals 1

    iget v0, p0, Lcom/j/a/c$a;->h:I

    return v0
.end method

.method static synthetic l(Lcom/j/a/c$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/j/a/c$a;->j:Z

    return v0
.end method

.method static synthetic m(Lcom/j/a/c$a;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/j/a/c$a;->l:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/j/a/c$a;
    .locals 0

    iput p1, p0, Lcom/j/a/c$a;->c:I

    return-object p0
.end method

.method public a()Lcom/j/a/c;
    .locals 2

    new-instance v0, Lcom/j/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/j/a/c;-><init>(Lcom/j/a/c$a;Lcom/j/a/c$1;)V

    return-object v0
.end method

.method public b(I)Lcom/j/a/c$a;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p1, p0, Lcom/j/a/c$a;->e:I

    :goto_0
    return-object p0

    :cond_0
    if-nez p1, :cond_1

    iput p1, p0, Lcom/j/a/c$a;->e:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StyleableB\'s duration must either be LENGTH_LONG or LENGTH_SHORT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)Lcom/j/a/c$a;
    .locals 0

    iput p1, p0, Lcom/j/a/c$a;->b:I

    return-object p0
.end method

.method public d(I)Lcom/j/a/c$a;
    .locals 0

    iput p1, p0, Lcom/j/a/c$a;->h:I

    return-object p0
.end method
