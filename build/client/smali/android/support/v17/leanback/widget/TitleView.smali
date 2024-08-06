.class public Landroid/support/v17/leanback/widget/TitleView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/support/v17/leanback/widget/SearchOrbView;

.field private d:I

.field private e:Z

.field private final f:Landroid/support/v17/leanback/widget/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v17/leanback/a$a;->browseTitleViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x6

    iput v0, p0, Landroid/support/v17/leanback/widget/TitleView;->d:I

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/TitleView;->e:Z

    new-instance v0, Landroid/support/v17/leanback/widget/TitleView$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/TitleView$1;-><init>(Landroid/support/v17/leanback/widget/TitleView;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->f:Landroid/support/v17/leanback/widget/x;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$h;->lb_title_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Landroid/support/v17/leanback/a$f;->title_badge:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->a:Landroid/widget/ImageView;

    sget v0, Landroid/support/v17/leanback/a$f;->title_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->b:Landroid/widget/TextView;

    sget v0, Landroid/support/v17/leanback/a$f;->title_orb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SearchOrbView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->c:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/TitleView;->setClipToPadding(Z)V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/TitleView;->setClipChildren(Z)V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x4

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/TitleView;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/TitleView;->d:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/TitleView;->c:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setVisibility(I)V

    return-void
.end method

.method private b()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->c:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->getOrbColors()Landroid/support/v17/leanback/widget/SearchOrbView$a;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAffordanceView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->c:Landroid/support/v17/leanback/widget/SearchOrbView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleViewAdapter()Landroid/support/v17/leanback/widget/x;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->f:Landroid/support/v17/leanback/widget/x;

    return-object v0
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleView;->b()V

    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/TitleView;->e:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->c:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleView;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$a;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->c:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$a;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleView;->b()V

    return-void
.end method
