.class public Lcom/eztv/powerful/d/f;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/d/f$b;,
        Lcom/eztv/powerful/d/f$c;,
        Lcom/eztv/powerful/d/f$a;,
        Lcom/eztv/powerful/d/f$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/d/f$d;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/text/SimpleDateFormat;

.field private b:Landroid/content/Context;

.field private c:Lcom/a/a/e;

.field private d:I

.field private e:Z

.field private f:Lcom/eztv/powerful/d/c;

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/a/a/e;IZ)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eztv/powerful/d/f;->a:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/eztv/powerful/d/f;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/eztv/powerful/d/f;->c:Lcom/a/a/e;

    iput-boolean p4, p0, Lcom/eztv/powerful/d/f;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/d/f;)Lcom/eztv/powerful/d/c;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/f;->f:Lcom/eztv/powerful/d/c;

    return-object v0
.end method

.method static synthetic b(Lcom/eztv/powerful/d/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/f;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/eztv/powerful/d/f;->c:Lcom/a/a/e;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/eztv/powerful/d/f;->c:Lcom/a/a/e;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/a/a/e;->d(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/b;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/d/f$d;
    .locals 4

    iget-object v0, p0, Lcom/eztv/powerful/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/eztv/powerful/d/f;->a:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/eztv/powerful/d/f;->a:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eztv/powerful/d/f;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/eztv/powerful/d/f$d;

    invoke-direct {v1, p0, v0}, Lcom/eztv/powerful/d/f$d;-><init>(Lcom/eztv/powerful/d/f;Landroid/view/View;)V

    return-object v1

    :catch_0
    move-exception v1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/eztv/powerful/d/f;->g:J

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/d/f$d;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/d/f;->a(Lcom/eztv/powerful/d/f$d;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/f;->f:Lcom/eztv/powerful/d/c;

    return-void
.end method

.method public a(Lcom/eztv/powerful/d/f$d;I)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/d/f;->c:Lcom/a/a/e;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/a/a/e;->d(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/a/a/b;->a(I)Lcom/a/a/e;

    move-result-object v2

    const-string v0, "starttime"

    invoke-virtual {v2, v0}, Lcom/a/a/e;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    iget-boolean v0, p0, Lcom/eztv/powerful/d/f;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/d/f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/eztv/powerful/d/f;->g:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    invoke-static {p1}, Lcom/eztv/powerful/d/f$d;->a(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget v0, p0, Lcom/eztv/powerful/d/f;->d:I

    if-ne p2, v0, :cond_2

    invoke-static {p1}, Lcom/eztv/powerful/d/f$d;->b(Lcom/eztv/powerful/d/f$d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    invoke-static {p1}, Lcom/eztv/powerful/d/f$d;->b(Lcom/eztv/powerful/d/f$d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p1, Lcom/eztv/powerful/d/f$d;->b:Landroid/view/View;

    const v4, 0x7f0a01f4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/eztv/powerful/d/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/f$d;->b:Landroid/view/View;

    const v4, 0x7f0a01f5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/eztv/powerful/d/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-static {p1}, Lcom/eztv/powerful/d/f$d;->c(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lcom/a/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/eztv/powerful/d/f$d;->d(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/eztv/powerful/d/f$d;->c(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lcom/eztv/powerful/d/f$c;

    invoke-direct {v2, p0, p2}, Lcom/eztv/powerful/d/f$c;-><init>(Lcom/eztv/powerful/d/f;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/f$d;->b:Landroid/view/View;

    new-instance v2, Lcom/eztv/powerful/d/f$a;

    invoke-direct {v2, p0, p2, v1}, Lcom/eztv/powerful/d/f$a;-><init>(Lcom/eztv/powerful/d/f;ILcom/a/a/b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/f$d;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/f$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/d/f$b;-><init>(Lcom/eztv/powerful/d/f;ILcom/eztv/powerful/d/f$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    :cond_1
    :try_start_3
    invoke-static {p1}, Lcom/eztv/powerful/d/f$d;->a(Lcom/eztv/powerful/d/f$d;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/eztv/powerful/d/f$d;->b(Lcom/eztv/powerful/d/f$d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    invoke-static {p1}, Lcom/eztv/powerful/d/f$d;->b(Lcom/eztv/powerful/d/f$d;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p1, Lcom/eztv/powerful/d/f$d;->b:Landroid/view/View;

    const v4, 0x7f0a01f4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/eztv/powerful/d/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/f$d;->b:Landroid/view/View;

    const v4, 0x7f0a01f5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/eztv/powerful/d/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method public b(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/d/f;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/d/f$d;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/eztv/powerful/d/f;->d:I

    return-void
.end method
