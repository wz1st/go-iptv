.class public Lcom/eztv/powerful/widget/a/a;
.super Landroid/app/Activity;


# static fields
.field static a:Lcom/eztv/powerful/PlayerActivity;

.field public static g:Landroid/view/View;

.field private static o:Ljava/util/Comparator;


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/Context;

.field public d:Z

.field e:Landroid/support/v7/widget/RecyclerView;

.field f:Landroid/support/v7/widget/RecyclerView;

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/b;",
            ">;>;"
        }
    .end annotation
.end field

.field i:I

.field j:I

.field k:Lcom/eztv/powerful/widget/a/a/b;

.field l:Landroid/os/Handler;

.field m:Landroid/view/View;

.field n:Ljava/lang/Runnable;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/widget/a/a;->o:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/eztv/powerful/PlayerActivity;Landroid/content/Context;)V
    .locals 3

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a;->h:Ljava/util/Map;

    iput v1, p0, Lcom/eztv/powerful/widget/a/a;->i:I

    iput v1, p0, Lcom/eztv/powerful/widget/a/a;->j:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a;->l:Landroid/os/Handler;

    sput-object p1, Lcom/eztv/powerful/widget/a/a;->a:Lcom/eztv/powerful/PlayerActivity;

    iput-object p2, p0, Lcom/eztv/powerful/widget/a/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/eztv/powerful/PlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a;->p:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eztv/powerful/widget/a/a;->d:Z

    invoke-direct {p0}, Lcom/eztv/powerful/widget/a/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/widget/a/a;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->q:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic b(Lcom/eztv/powerful/widget/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/eztv/powerful/widget/a/a;->f()V

    return-void
.end method

.method static synthetic c(Lcom/eztv/powerful/widget/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/eztv/powerful/widget/a/a;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/eztv/powerful/widget/a/a$1;

    invoke-direct {v0, p0}, Lcom/eztv/powerful/widget/a/a$1;-><init>(Lcom/eztv/powerful/widget/a/a;)V

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a;->n:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->p:Landroid/view/View;

    const v1, 0x7f0a0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/eztv/powerful/widget/a/a$2;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/widget/a/a$2;-><init>(Lcom/eztv/powerful/widget/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->p:Landroid/view/View;

    const v1, 0x7f0a01ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u65f6\u95f4\u6392\u5e8f"

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string v3, "\u5b57\u6bcd\u6392\u5e8f"

    aput-object v3, v1, v2

    new-instance v2, Landroid/widget/ArrayAdapter;

    sget-object v3, Lcom/eztv/powerful/widget/a/a;->a:Lcom/eztv/powerful/PlayerActivity;

    const v4, 0x7f0c0032

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/eztv/powerful/widget/a/a$3;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/widget/a/a$3;-><init>(Lcom/eztv/powerful/widget/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-boolean v0, p0, Lcom/eztv/powerful/widget/a/a;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/eztv/powerful/util/i;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Lcom/eztv/powerful/widget/a/b/a;

    invoke-direct {v3, v1, v0}, Lcom/eztv/powerful/widget/a/b/a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/eztv/powerful/widget/a/a;->f()V

    iput-boolean v5, p0, Lcom/eztv/powerful/widget/a/a;->d:Z

    :cond_1
    return-void
.end method

.method private f()V
    .locals 5

    new-instance v1, Lcom/eztv/powerful/widget/a/a/a;

    sget-object v0, Lcom/eztv/powerful/widget/a/a;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v2, p0, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Lcom/eztv/powerful/widget/a/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->p:Landroid/view/View;

    const v2, 0x7f0a012b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->p:Landroid/view/View;

    const v2, 0x7f0a012d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;

    sget-object v2, Lcom/eztv/powerful/widget/a/a;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {v0, v2}, Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;->b(I)V

    new-instance v2, Lcom/eztv/powerful/recycleview/layoutmanager/MovieLinearLayoutManager;

    sget-object v3, Lcom/eztv/powerful/widget/a/a;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/eztv/powerful/recycleview/layoutmanager/MovieLinearLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/eztv/powerful/widget/a/a;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v3, p0, Lcom/eztv/powerful/widget/a/a;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    new-instance v3, Lcom/eztv/powerful/widget/a/a$4;

    invoke-direct {v3, p0, v0, v2}, Lcom/eztv/powerful/widget/a/a$4;-><init>(Lcom/eztv/powerful/widget/a/a;Lcom/eztv/powerful/recycleview/layoutmanager/MovieClassificationLinearLayoutManager;Lcom/eztv/powerful/recycleview/layoutmanager/MovieLinearLayoutManager;)V

    invoke-virtual {v1, v3}, Lcom/eztv/powerful/widget/a/a/a;->a(Lcom/eztv/powerful/widget/a/c/a;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eztv/powerful/widget/a/b/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/eztv/powerful/widget/a/a;->j:I

    return-void
.end method

.method public a(II)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/eztv/powerful/widget/a/a;->p:Landroid/view/View;

    invoke-direct {v0, v1, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/eztv/powerful/widget/a/a;->q:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->q:Landroid/widget/PopupWindow;

    const v1, 0x7f1001da

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->q:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->q:Landroid/widget/PopupWindow;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->b:Lcom/view/IJKVideoView;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0}, Lcom/eztv/powerful/widget/a/a;->d()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/widget/a/a;->p:Landroid/view/View;

    const v1, 0x7f0a0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/eztv/powerful/widget/a/a;->i:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/eztv/powerful/widget/a/a;->j:I

    return v0
.end method
