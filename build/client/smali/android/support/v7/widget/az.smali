.class Landroid/support/v7/widget/az;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/WindowManager$LayoutParams;

.field private final e:Landroid/graphics/Rect;

.field private final f:[I

.field private final g:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Rect;

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/az;->f:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/az;->g:[I

    iput-object p1, p0, Landroid/support/v7/widget/az;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$g;->abc_tooltip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/az;->b:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/az;->b:Landroid/view/View;

    sget v1, Landroid/support/v7/a/a$f;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/widget/az;->c:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/support/v7/a/a$i;->Animation_AppCompat_Tooltip:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_1
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/v7/a/a$d;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lt v2, v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/v7/a/a$d;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int v2, p3, v0

    sub-int v0, p3, v0

    :goto_1
    const/16 v3, 0x31

    iput v3, p5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, p0, Landroid/support/v7/widget/az;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p4, :cond_2

    sget v3, Landroid/support/v7/a/a$d;->tooltip_y_offset_touch:I

    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-static {p1}, Landroid/support/v7/widget/az;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v0, "TooltipPopup"

    const-string v1, "Cannot find app view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 p2, v2, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    move v0, v1

    goto :goto_1

    :cond_2
    sget v3, Landroid/support/v7/a/a$d;->tooltip_y_offset_non_touch:I

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Rect;

    invoke-virtual {v5, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/az;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v3, "status_bar_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v6, v3, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_4
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Rect;

    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v1, v3, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/az;->g:[I

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Landroid/support/v7/widget/az;->f:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Landroid/support/v7/widget/az;->f:[I

    aget v6, v3, v1

    iget-object v7, p0, Landroid/support/v7/widget/az;->g:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    aput v6, v3, v1

    iget-object v3, p0, Landroid/support/v7/widget/az;->f:[I

    aget v6, v3, v9

    iget-object v7, p0, Landroid/support/v7/widget/az;->g:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    aput v6, v3, v9

    iget-object v3, p0, Landroid/support/v7/widget/az;->f:[I

    aget v3, v3, v1

    add-int/2addr v3, p2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iput v3, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/az;->b:Landroid/view/View;

    invoke-virtual {v3, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Landroid/support/v7/widget/az;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/az;->f:[I

    aget v3, v3, v9

    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    sub-int/2addr v0, v1

    iget-object v3, p0, Landroid/support/v7/widget/az;->f:[I

    aget v3, v3, v9

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    if-eqz p4, :cond_7

    if-ltz v0, :cond_6

    iput v0, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    :cond_5
    move v3, v1

    goto :goto_4

    :cond_6
    iput v2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    :cond_7
    add-int/2addr v1, v2

    iget-object v3, p0, Landroid/support/v7/widget/az;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v1, v3, :cond_8

    iput v2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    :cond_8
    iput v0, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/az;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/support/v7/widget/az;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/az;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/az;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/az;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/az;->a(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/support/v7/widget/az;->b:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/az;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/az;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
