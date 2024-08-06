.class public Lcom/eztv/powerful/d/d;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/d/d$b;,
        Lcom/eztv/powerful/d/d$a;,
        Lcom/eztv/powerful/d/d$c;,
        Lcom/eztv/powerful/d/d$d;,
        Lcom/eztv/powerful/d/d$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/d/d$e;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eztv/powerful/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:F

.field e:Ljava/lang/String;

.field f:Landroid/support/v7/widget/RecyclerView$o;

.field private g:I

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Lcom/eztv/powerful/d/a;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eztv/powerful/b/c;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput v1, p0, Lcom/eztv/powerful/d/d;->g:I

    iput v1, p0, Lcom/eztv/powerful/d/d;->h:I

    iput v0, p0, Lcom/eztv/powerful/d/d;->b:F

    iput v0, p0, Lcom/eztv/powerful/d/d;->c:F

    iput v0, p0, Lcom/eztv/powerful/d/d;->d:F

    const-string v0, ""

    iput-object v0, p0, Lcom/eztv/powerful/d/d;->e:Ljava/lang/String;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$o;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$o;-><init>()V

    iput-object v0, p0, Lcom/eztv/powerful/d/d;->f:Landroid/support/v7/widget/RecyclerView$o;

    new-instance v0, Lcom/eztv/powerful/d/d$1;

    invoke-direct {v0, p0}, Lcom/eztv/powerful/d/d$1;-><init>(Lcom/eztv/powerful/d/d;)V

    iput-object v0, p0, Lcom/eztv/powerful/d/d;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/eztv/powerful/d/d;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    iput p3, p0, Lcom/eztv/powerful/d/d;->g:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/eztv/powerful/SplashActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/emoji/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eztv/powerful/d/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eztv/powerful/d/d;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;ZI)Landroid/text/SpannableString;
    .locals 12

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x14

    new-array v5, v1, [Landroid/text/style/ImageSpan;

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    const-string v6, "[emoji:"

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_0

    const-string v6, "[emoji:"

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "]"

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v6, 0x7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/eztv/powerful/d/d;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    div-float/2addr v7, v9

    float-to-int v7, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v11

    invoke-virtual {v8, v9, v10, v7, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v7, Landroid/text/style/ImageSpan;

    invoke-direct {v7, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v7, v5, v1

    aget-object v7, v5, v1

    const/16 v8, 0x11

    invoke-virtual {v2, v7, v6, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v5, p0, Lcom/eztv/powerful/d/d;->d:F

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v5, p0, Lcom/eztv/powerful/d/d;->c:F

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->w:Lcom/eztv/powerful/b/b;

    sget v5, Lcom/eztv/powerful/PlayerActivity;->d:I

    invoke-virtual {v1, v5}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eztv/powerful/b/a;

    iget-object v1, v1, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eztv/powerful/b/c;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/eztv/powerful/b/c;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    if-lez v4, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eztv/powerful/b/c;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/eztv/powerful/b/c;->d:Z

    :cond_2
    move-object v1, v2

    :goto_2
    return-object v1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object v1, v3

    goto :goto_2
.end method

.method static synthetic a(Lcom/eztv/powerful/d/d;)Lcom/eztv/powerful/d/a;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->j:Lcom/eztv/powerful/d/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/eztv/powerful/d/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->i:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/d/d$e;
    .locals 5

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/d/d$e;

    invoke-direct {v1, p0, v0}, Lcom/eztv/powerful/d/d$e;-><init>(Lcom/eztv/powerful/d/d;Landroid/view/View;)V

    invoke-static {v1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/eztv/powerful/d/d;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07039c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/eztv/powerful/d/d;->b:F

    invoke-static {v1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/eztv/powerful/d/d;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070171

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/eztv/powerful/d/d;->d:F

    invoke-static {v1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/eztv/powerful/d/d;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070638

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/eztv/powerful/d/d;->c:F

    new-instance v1, Lcom/eztv/powerful/d/d$e;

    invoke-direct {v1, p0, v0}, Lcom/eztv/powerful/d/d$e;-><init>(Lcom/eztv/powerful/d/d;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/d/d$e;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/d/d;->a(Lcom/eztv/powerful/d/d$e;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/d;->j:Lcom/eztv/powerful/d/a;

    return-void
.end method

.method public a(Lcom/eztv/powerful/d/d$e;I)V
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->c(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget v0, v0, Lcom/eztv/powerful/b/c;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->c:Ljava/lang/String;

    const-string v2, "null"

    if-eq v0, v2, :cond_2

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    iget v2, p0, Lcom/eztv/powerful/d/d;->b:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setY(F)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-boolean v0, v0, Lcom/eztv/powerful/b/c;->d:Z

    if-ne v0, v4, :cond_0

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/eztv/powerful/d/d;->c:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/eztv/powerful/d/d;->d:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/eztv/powerful/d/d;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;ZI)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->y:Lcom/eztv/powerful/b/d;

    sget v2, Lcom/eztv/powerful/PlayerActivity;->A:I

    invoke-virtual {v0, v2, p2}, Lcom/eztv/powerful/b/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p1, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    const v2, 0x7f0a00fd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iget-object v0, p1, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    new-instance v2, Lcom/eztv/powerful/d/d$b;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/eztv/powerful/d/d$b;-><init>(Lcom/eztv/powerful/d/d;ILjava/lang/String;Lcom/eztv/powerful/d/d$e;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/d/d$a;

    invoke-direct {v1, p0, p2}, Lcom/eztv/powerful/d/d$a;-><init>(Lcom/eztv/powerful/d/d;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/d/d$d;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/d/d$d;-><init>(Lcom/eztv/powerful/d/d;ILcom/eztv/powerful/d/d$e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/d$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/d/d$c;-><init>(Lcom/eztv/powerful/d/d;ILcom/eztv/powerful/d/d$e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget v0, p0, Lcom/eztv/powerful/d/d;->h:I

    if-ne v0, p2, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iput v7, p0, Lcom/eztv/powerful/d/d;->h:I

    :cond_1
    return-void

    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/eztv/powerful/d/d;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;ZI)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v3

    move-object v0, p0

    move v4, v7

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/eztv/powerful/d/d;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;ZI)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/eztv/powerful/d/d;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;ZI)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_4
    :try_start_4
    iget-object v0, p1, Lcom/eztv/powerful/d/d$e;->b:Landroid/view/View;

    const v2, 0x7f0a00fd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public a(Lcom/eztv/powerful/d/d$e;ILjava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->c:Ljava/lang/String;

    const-string v1, "null"

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-boolean v0, v0, Lcom/eztv/powerful/b/c;->d:Z

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/eztv/powerful/d/d;->c:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/eztv/powerful/d/d;->d:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/eztv/powerful/d/d;->b:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p0, p3, p2}, Lcom/eztv/powerful/d/d;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->c:Ljava/lang/String;

    const-string v1, "null"

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-object v0, v0, Lcom/eztv/powerful/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget-boolean v0, v0, Lcom/eztv/powerful/b/c;->d:Z

    if-ne v0, v2, :cond_3

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/eztv/powerful/d/d;->c:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/eztv/powerful/d/d;->d:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->b(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p1}, Lcom/eztv/powerful/d/d$e;->a(Lcom/eztv/powerful/d/d$e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/eztv/powerful/d/d;->b:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    sget v0, Lcom/eztv/powerful/PlayerActivity;->d:I

    const-string v1, ""

    const-string v1, "\\[emoji:(.*)\\]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/eztv/powerful/PlayerActivity;->Z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?simple=1&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/eztv/powerful/d/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/eztv/powerful/d/d$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/eztv/powerful/d/d$2;-><init>(Lcom/eztv/powerful/d/d;II)V

    invoke-static {v1, v2}, Lcom/eztv/powerful/util/h;->a(Ljava/lang/String;Lcom/eztv/powerful/util/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/d/d;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/d/d$e;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/eztv/powerful/b/c;

    invoke-direct {v0}, Lcom/eztv/powerful/b/c;-><init>()V

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    iput-object v1, v0, Lcom/eztv/powerful/b/c;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lcom/eztv/powerful/b/c;->a:I

    iget-object v1, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/eztv/powerful/d/d;->c()V

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/eztv/powerful/d/d;->g:I

    invoke-virtual {p0}, Lcom/eztv/powerful/d/d;->c()V

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/eztv/powerful/d/d;->h:I

    invoke-virtual {p0}, Lcom/eztv/powerful/d/d;->c()V

    return-void
.end method

.method public h(I)I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget v0, v0, Lcom/eztv/powerful/b/c;->a:I

    return v0
.end method
