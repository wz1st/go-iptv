.class public Landroid/support/c/a/a;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/f/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/c/a/a$f;,
        Landroid/support/c/a/a$d;,
        Landroid/support/c/a/a$b;,
        Landroid/support/c/a/a$a;,
        Landroid/support/c/a/a$c;,
        Landroid/support/c/a/a$g;,
        Landroid/support/c/a/a$e;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/support/c/a/a$b;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroid/support/v4/e/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l$a",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field e:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/support/v4/widget/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/e",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final j:[I

.field private k:Landroid/graphics/Paint;

.field private l:Z

.field private m:Z

.field private n:[I

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/support/c/a/a$e;

.field private r:Z

.field private s:Landroid/support/v4/f/z;

.field private t:Z

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/support/v4/f/p;

.field private final w:Landroid/support/v4/f/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const-class v0, Landroid/support/c/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Landroid/support/c/a/a;->a:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    new-instance v0, Landroid/support/c/a/a$g;

    invoke-direct {v0}, Landroid/support/c/a/a$g;-><init>()V

    sput-object v0, Landroid/support/c/a/a;->d:Ljava/util/Comparator;

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/c/a/a;->b:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/c/a/a;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/support/v4/e/l$c;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/e/l$c;-><init>(I)V

    sput-object v0, Landroid/support/c/a/a;->f:Landroid/support/v4/e/l$a;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    sput-object v1, Landroid/support/c/a/a;->d:Ljava/util/Comparator;

    goto :goto_1
.end method

.method private static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/c/a/a$b;
    .locals 4

    const/16 v2, 0x2e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_1
    :try_start_0
    sget-object v0, Landroid/support/c/a/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Landroid/support/c/a/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_2
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Landroid/support/c/a/a;->b:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v0, Landroid/support/c/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/c/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not inflate Behavior subclass "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method private static a(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    sget-object v0, Landroid/support/c/a/a;->f:Landroid/support/v4/e/l$a;

    invoke-interface {v0, p0}, Landroid/support/v4/e/l$a;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/support/c/a/a$d;Landroid/graphics/Rect;II)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/c/a/a;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/support/c/a/a$d;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroid/support/c/a/a$d;->rightMargin:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroid/support/c/a/a$d;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget v4, p1, Landroid/support/c/a/a$d;->bottomMargin:I

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v2, v0, p3

    add-int v3, v1, p4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    iget v1, v0, Landroid/support/c/a/a$d;->c:I

    invoke-static {v1}, Landroid/support/c/a/a;->d(I)I

    move-result v1

    invoke-static {v1, p3}, Landroid/support/v4/f/d;->a(II)I

    move-result v1

    and-int/lit8 v3, v1, 0x7

    and-int/lit8 v4, v1, 0x70

    invoke-virtual {p0}, Landroid/support/c/a/a;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/c/a/a;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    sub-int p2, v5, p2

    :cond_0
    invoke-direct {p0, p2}, Landroid/support/c/a/a;->b(I)I

    move-result v1

    sub-int v2, v1, v7

    const/4 v1, 0x0

    sparse-switch v3, :sswitch_data_0

    :goto_0
    sparse-switch v4, :sswitch_data_1

    :goto_1
    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingLeft()I

    move-result v3

    iget v4, v0, Landroid/support/c/a/a$d;->leftMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingRight()I

    move-result v4

    sub-int v4, v5, v4

    sub-int/2addr v4, v7

    iget v5, v0, Landroid/support/c/a/a$d;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingTop()I

    move-result v3

    iget v4, v0, Landroid/support/c/a/a$d;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingBottom()I

    move-result v4

    sub-int v4, v6, v4

    sub-int/2addr v4, v8

    iget v0, v0, Landroid/support/c/a/a$d;->bottomMargin:I

    sub-int v0, v4, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v1, v2, v7

    add-int v3, v0, v8

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :sswitch_0
    add-int/2addr v2, v7

    goto :goto_0

    :sswitch_1
    div-int/lit8 v3, v7, 0x2

    add-int/2addr v2, v3

    goto :goto_0

    :sswitch_2
    add-int/2addr v1, v8

    goto :goto_1

    :sswitch_3
    div-int/lit8 v3, v8, 0x2

    add-int/2addr v1, v3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/c/a/a$d;II)V
    .locals 5

    iget v0, p5, Landroid/support/c/a/a$d;->c:I

    invoke-static {v0}, Landroid/support/c/a/a;->e(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/support/v4/f/d;->a(II)I

    move-result v0

    iget v1, p5, Landroid/support/c/a/a$d;->d:I

    invoke-static {v1}, Landroid/support/c/a/a;->c(I)I

    move-result v1

    invoke-static {v1, p2}, Landroid/support/v4/f/d;->a(II)I

    move-result v1

    and-int/lit8 v2, v0, 0x7

    and-int/lit8 v3, v0, 0x70

    and-int/lit8 v0, v1, 0x7

    and-int/lit8 v4, v1, 0x70

    sparse-switch v0, :sswitch_data_0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    :goto_0
    sparse-switch v4, :sswitch_data_1

    iget v0, p3, Landroid/graphics/Rect;->top:I

    :goto_1
    sparse-switch v2, :sswitch_data_2

    sub-int/2addr v1, p6

    :goto_2
    :sswitch_0
    sparse-switch v3, :sswitch_data_3

    sub-int/2addr v0, p7

    :goto_3
    :sswitch_1
    add-int v2, v1, p6

    add-int v3, v0, p7

    invoke-virtual {p4, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :sswitch_2
    iget v1, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :sswitch_3
    iget v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    goto :goto_0

    :sswitch_4
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :sswitch_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    goto :goto_1

    :sswitch_6
    div-int/lit8 v2, p6, 0x2

    sub-int/2addr v1, v2

    goto :goto_2

    :sswitch_7
    div-int/lit8 v2, p7, 0x2

    sub-int/2addr v0, v2

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/support/v4/f/t;->r(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v2

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0, p1, v4}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | Bounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    invoke-static {v5}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    iget v2, v0, Landroid/support/c/a/a$d;->h:I

    invoke-static {v2, p3}, Landroid/support/v4/f/d;->a(II)I

    move-result v5

    and-int/lit8 v2, v5, 0x30

    const/16 v6, 0x30

    if-ne v2, v6, :cond_a

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/support/c/a/a$d;->topMargin:I

    sub-int/2addr v2, v6

    iget v6, v0, Landroid/support/c/a/a$d;->j:I

    sub-int/2addr v2, v6

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_a

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int v2, v6, v2

    invoke-direct {p0, p1, v2}, Landroid/support/c/a/a;->f(Landroid/view/View;I)V

    move v2, v1

    :goto_1
    and-int/lit8 v6, v5, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_5

    invoke-virtual {p0}, Landroid/support/c/a/a;->getHeight()I

    move-result v6

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/support/c/a/a$d;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/support/c/a/a$d;->j:I

    add-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_5

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v6, v2

    invoke-direct {p0, p1, v2}, Landroid/support/c/a/a;->f(Landroid/view/View;I)V

    move v2, v1

    :cond_5
    if-nez v2, :cond_6

    invoke-direct {p0, p1, v3}, Landroid/support/c/a/a;->f(Landroid/view/View;I)V

    :cond_6
    and-int/lit8 v2, v5, 0x3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_9

    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/support/c/a/a$d;->leftMargin:I

    sub-int/2addr v2, v6

    iget v6, v0, Landroid/support/c/a/a$d;->i:I

    sub-int/2addr v2, v6

    iget v6, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_9

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int v2, v6, v2

    invoke-direct {p0, p1, v2}, Landroid/support/c/a/a;->e(Landroid/view/View;I)V

    move v2, v1

    :goto_2
    and-int/lit8 v5, v5, 0x5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    invoke-virtual {p0}, Landroid/support/c/a/a;->getWidth()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/support/c/a/a$d;->rightMargin:I

    sub-int/2addr v5, v6

    iget v0, v0, Landroid/support/c/a/a$d;->i:I

    add-int/2addr v0, v5

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v5, :cond_8

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Landroid/support/c/a/a;->e(Landroid/view/View;I)V

    move v0, v1

    :goto_3
    if-nez v0, :cond_7

    invoke-direct {p0, p1, v3}, Landroid/support/c/a/a;->e(Landroid/view/View;I)V

    :cond_7
    invoke-static {v4}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v2, v3

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/View;I)V
    .locals 6

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, p2, v1}, Landroid/support/c/a/a;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, p3, v1, v2}, Landroid/support/c/a/a;->a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    invoke-static {v2}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    invoke-static {v2}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    throw v0
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/support/c/a/a;->isChildrenDrawingOrderEnabled()Z

    move-result v2

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3, v1}, Landroid/support/c/a/a;->getChildDrawingOrder(II)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/support/c/a/a;->d:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/c/a/a;->d:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private a(Z)V
    .locals 12

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v9

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    invoke-virtual {p0, v8}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v11, p0, v10, v0}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v11, p0, v10, v0}, Landroid/support/c/a/a$b;->b(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_2
    if-ge v1, v9, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0}, Landroid/support/c/a/a$d;->e()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/a;->o:Landroid/view/View;

    iput-boolean v7, p0, Landroid/support/c/a/a;->l:Z

    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)Z
    .locals 20

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/c/a/a;->i:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/support/c/a/a;->a(Ljava/util/List;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    const/4 v4, 0x0

    move v15, v4

    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/c/a/a$d;

    invoke-virtual {v4}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v19

    if-nez v14, :cond_0

    if-eqz v13, :cond_1

    :cond_0
    if-eqz v16, :cond_1

    if-eqz v19, :cond_6

    if-nez v5, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    :goto_1
    packed-switch p2, :pswitch_data_0

    :goto_2
    move v6, v13

    move v7, v14

    :goto_3
    add-int/lit8 v8, v15, 0x1

    move v15, v8

    move-object v5, v4

    move v13, v6

    move v14, v7

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Landroid/support/c/a/a$b;->b(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_1
    if-nez v14, :cond_2

    if-eqz v19, :cond_2

    packed-switch p2, :pswitch_data_1

    :goto_4
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/support/c/a/a;->o:Landroid/view/View;

    :cond_2
    move v7, v14

    invoke-virtual {v4}, Landroid/support/c/a/a$d;->d()Z

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12}, Landroid/support/c/a/a$d;->a(Landroid/support/c/a/a;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_5
    if-eqz v4, :cond_4

    if-nez v6, :cond_4

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    return v7

    :pswitch_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Landroid/support/c/a/a$b;->b(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    goto :goto_5

    :cond_4
    move-object v4, v5

    goto :goto_3

    :cond_5
    move-object v4, v5

    goto :goto_1

    :cond_6
    move-object v4, v5

    move v6, v13

    move v7, v14

    goto :goto_3

    :cond_7
    move v7, v14

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/c/a/a;->n:[I

    if-nez v1, :cond_0

    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Landroid/support/c/a/a;->n:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    :cond_1
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/c/a/a;->n:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/f/z;)Landroid/support/v4/f/z;
    .locals 5

    invoke-virtual {p1}, Landroid/support/v4/f/z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v3

    move v2, v0

    move-object v1, p1

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/f/t;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, v4, v1}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/support/v4/f/z;)Landroid/support/v4/f/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/f/z;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    move-object p1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private b(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/a;->h:Landroid/support/v4/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/e;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static c(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_1

    const v0, 0x800003

    or-int/2addr v0, p0

    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x30

    :cond_0
    return v0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method private static d(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800035

    :cond_0
    return p0
.end method

.method private d(Landroid/view/View;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/support/c/a/a$d;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingTop()I

    move-result v2

    iget v4, v0, Landroid/support/c/a/a$d;->topMargin:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/support/c/a/a;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/support/c/a/a$d;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/c/a/a;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/support/c/a/a$d;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/f/t;->l(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/support/v4/f/t;->l(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    invoke-virtual {v2}, Landroid/support/v4/f/z;->a()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    invoke-virtual {v2}, Landroid/support/v4/f/z;->b()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    invoke-virtual {v2}, Landroid/support/v4/f/z;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    invoke-virtual {v2}, Landroid/support/v4/f/z;->d()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v4

    iget v0, v0, Landroid/support/c/a/a$d;->c:I

    invoke-static {v0}, Landroid/support/c/a/a;->c(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/support/v4/f/d;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    invoke-static {v3}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    invoke-static {v4}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static e(I)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x11

    :cond_0
    return p0
.end method

.method private static e()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Landroid/support/c/a/a;->f:Landroid/support/v4/e/l$a;

    invoke-interface {v0}, Landroid/support/v4/e/l$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    return-object v0
.end method

.method private e(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    iget v1, v0, Landroid/support/c/a/a$d;->i:I

    if-eq v1, p2, :cond_0

    iget v1, v0, Landroid/support/c/a/a$d;->i:I

    sub-int v1, p2, v1

    invoke-static {p1, v1}, Landroid/support/v4/f/t;->d(Landroid/view/View;I)V

    iput p2, v0, Landroid/support/c/a/a$d;->i:I

    :cond_0
    return-void
.end method

.method private f()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/c/a/a;->h:Landroid/support/v4/widget/e;

    invoke-virtual {v0}, Landroid/support/v4/widget/e;->a()V

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/support/c/a/a;->a(Landroid/view/View;)Landroid/support/c/a/a$d;

    move-result-object v5

    invoke-virtual {v5, p0, v4}, Landroid/support/c/a/a$d;->b(Landroid/support/c/a/a;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Landroid/support/c/a/a;->h:Landroid/support/v4/widget/e;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/e;->a(Ljava/lang/Object;)V

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, p0, v4, v6}, Landroid/support/c/a/a$d;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/support/c/a/a;->h:Landroid/support/v4/widget/e;

    invoke-virtual {v7, v6}, Landroid/support/v4/widget/e;->b(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/support/c/a/a;->h:Landroid/support/v4/widget/e;

    invoke-virtual {v7, v6}, Landroid/support/v4/widget/e;->a(Ljava/lang/Object;)V

    :cond_2
    iget-object v7, p0, Landroid/support/c/a/a;->h:Landroid/support/v4/widget/e;

    invoke-virtual {v7, v6, v4}, Landroid/support/v4/widget/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/c/a/a;->g:Ljava/util/List;

    iget-object v1, p0, Landroid/support/c/a/a;->h:Landroid/support/v4/widget/e;

    invoke-virtual {v1}, Landroid/support/v4/widget/e;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method private f(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    iget v1, v0, Landroid/support/c/a/a$d;->j:I

    if-eq v1, p2, :cond_0

    iget v1, v0, Landroid/support/c/a/a$d;->j:I

    sub-int v1, p2, v1

    invoke-static {p1, v1}, Landroid/support/v4/f/t;->c(Landroid/view/View;I)V

    iput p2, v0, Landroid/support/c/a/a$d;->j:I

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/support/v4/f/t;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/c/a/a;->v:Landroid/support/v4/f/p;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/c/a/a$1;

    invoke-direct {v0, p0}, Landroid/support/c/a/a$1;-><init>(Landroid/support/c/a/a;)V

    iput-object v0, p0, Landroid/support/c/a/a;->v:Landroid/support/v4/f/p;

    :cond_1
    iget-object v0, p0, Landroid/support/c/a/a;->v:Landroid/support/v4/f/p;

    invoke-static {p0, v0}, Landroid/support/v4/f/t;->a(Landroid/view/View;Landroid/support/v4/f/p;)V

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/support/c/a/a;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/f/t;->a(Landroid/view/View;Landroid/support/v4/f/p;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroid/support/c/a/a$d;
    .locals 2

    new-instance v0, Landroid/support/c/a/a$d;

    invoke-virtual {p0}, Landroid/support/c/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/c/a/a$d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method a(Landroid/view/View;)Landroid/support/c/a/a$d;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    iget-boolean v1, v0, Landroid/support/c/a/a$d;->b:Z

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/support/c/a/a$a;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/support/c/a/a$a;

    invoke-interface {p1}, Landroid/support/c/a/a$a;->a()Landroid/support/c/a/a$b;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "CoordinatorLayout"

    const-string v3, "Attached behavior class is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/c/a/a$d;->a(Landroid/support/c/a/a$b;)V

    iput-boolean v6, v0, Landroid/support/c/a/a$d;->b:Z

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const-class v1, Landroid/support/c/a/a$c;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroid/support/c/a/a$c;

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    if-eqz v2, :cond_4

    :try_start_0
    invoke-interface {v2}, Landroid/support/c/a/a$c;->a()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/c/a/a$b;

    invoke-virtual {v0, v1}, Landroid/support/c/a/a$d;->a(Landroid/support/c/a/a$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iput-boolean v6, v0, Landroid/support/c/a/a$d;->b:Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CoordinatorLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default behavior class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/support/c/a/a$c;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " could not be instantiated. Did you forget"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " a default constructor?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/c/a/a$d;
    .locals 1

    instance-of v0, p1, Landroid/support/c/a/a$d;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/c/a/a$d;

    check-cast p1, Landroid/support/c/a/a$d;

    invoke-direct {v0, p1}, Landroid/support/c/a/a$d;-><init>(Landroid/support/c/a/a$d;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/c/a/a$d;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/c/a/a$d;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/c/a/a$d;

    invoke-direct {v0, p1}, Landroid/support/c/a/a$d;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method final a(Landroid/support/v4/f/z;)Landroid/support/v4/f/z;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    invoke-static {v0, p1}, Landroid/support/v4/e/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/f/z;->b()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/c/a/a;->t:Z

    iget-boolean v0, p0, Landroid/support/c/a/a;->t:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/c/a/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/c/a/a;->setWillNotDraw(Z)V

    invoke-direct {p0, p1}, Landroid/support/c/a/a;->b(Landroid/support/v4/f/z;)Landroid/support/v4/f/z;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/c/a/a;->requestLayout()V

    :cond_0
    return-object p1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method a()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/support/c/a/a;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Landroid/support/c/a/a;->r:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/c/a/a;->b()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/c/a/a;->c()V

    goto :goto_1
.end method

.method final a(I)V
    .locals 14

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/support/v4/f/t;->f(Landroid/view/View;)I

    move-result v7

    iget-object v0, p0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v10

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v11

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_9

    iget-object v0, p0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/c/a/a$d;

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_3

    iget-object v2, p0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v12, v1, Landroid/support/c/a/a$d;->l:Landroid/view/View;

    if-ne v12, v2, :cond_2

    invoke-virtual {p0, v0, v7}, Landroid/support/c/a/a;->b(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v3, v10}, Landroid/support/c/a/a;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget v2, v1, Landroid/support/c/a/a$d;->g:I

    if-eqz v2, :cond_4

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v1, Landroid/support/c/a/a$d;->g:I

    invoke-static {v2, v7}, Landroid/support/v4/f/d;->a(II)I

    move-result v2

    and-int/lit8 v4, v2, 0x70

    sparse-switch v4, :sswitch_data_0

    :goto_2
    and-int/lit8 v2, v2, 0x7

    packed-switch v2, :pswitch_data_0

    :cond_4
    :goto_3
    :pswitch_0
    iget v1, v1, Landroid/support/c/a/a$d;->h:I

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0, v9, v7}, Landroid/support/c/a/a;->a(Landroid/view/View;Landroid/graphics/Rect;I)V

    :cond_5
    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    invoke-virtual {p0, v0, v11}, Landroid/support/c/a/a;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, v10}, Landroid/support/c/a/a;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_6
    add-int/lit8 v1, v6, 0x1

    move v4, v1

    :goto_4
    if-ge v4, v8, :cond_0

    iget-object v1, p0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/c/a/a$d;

    invoke-virtual {v2}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12, p0, v1, v0}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-nez p1, :cond_8

    invoke-virtual {v2}, Landroid/support/c/a/a$d;->f()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v2}, Landroid/support/c/a/a$d;->g()V

    :cond_7
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :sswitch_0
    iget v4, v9, Landroid/graphics/Rect;->top:I

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :sswitch_1
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/support/c/a/a;->getHeight()I

    move-result v12

    iget v13, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :pswitch_1
    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget v4, v10, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :pswitch_2
    iget v2, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/support/c/a/a;->getWidth()I

    move-result v4

    iget v12, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v12

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_8
    packed-switch p1, :pswitch_data_1

    invoke-virtual {v12, p0, v1, v0}, Landroid/support/c/a/a$b;->b(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_6
    if-ne p1, v3, :cond_7

    invoke-virtual {v2, v1}, Landroid/support/c/a/a$d;->a(Z)V

    goto :goto_5

    :pswitch_3
    invoke-virtual {v12, p0, v1, v0}, Landroid/support/c/a/a$b;->c(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;)V

    move v1, v3

    goto :goto_6

    :cond_9
    invoke-static {v9}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    invoke-static {v10}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    invoke-static {v11}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0}, Landroid/support/c/a/a$d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, v0, Landroid/support/c/a/a$d;->k:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/support/c/a/a$d;->k:Landroid/view/View;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/c/a/a;->a(Landroid/view/View;Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroid/support/c/a/a$d;->e:I

    if-ltz v1, :cond_2

    iget v0, v0, Landroid/support/c/a/a$d;->e:I

    invoke-direct {p0, p1, v0, p2}, Landroid/support/c/a/a;->a(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/c/a/a;->d(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/support/c/a/a;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public a(Landroid/view/View;IIIII)V
    .locals 12

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v11

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_2

    invoke-virtual {p0, v10}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_1
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/c/a/a$d;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/support/c/a/a$d;->b(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;IIIII)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/c/a/a;->a(I)V

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public a(Landroid/view/View;II[II)V
    .locals 13

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v12

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_4

    invoke-virtual {p0, v11}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    move v1, v9

    move v3, v10

    :goto_1
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move v9, v1

    move v10, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/c/a/a$d;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/support/c/a/a$d;->b(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v9

    move v3, v10

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Landroid/support/c/a/a;->j:[I

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/c/a/a;->j:[I

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    aput v7, v2, v4

    iget-object v7, p0, Landroid/support/c/a/a;->j:[I

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;II[II)V

    if-lez p2, :cond_2

    iget-object v1, p0, Landroid/support/c/a/a;->j:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_2
    if-lez p3, :cond_3

    iget-object v1, p0, Landroid/support/c/a/a;->j:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/c/a/a;->j:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroid/support/c/a/a;->j:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    aput v10, p4, v1

    const/4 v1, 0x1

    aput v9, p4, v1

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/c/a/a;->a(I)V

    :cond_5
    return-void

    :cond_6
    move v1, v9

    move v3, v10

    goto :goto_1
.end method

.method a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/c/a/a$d;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/c/a/a;->a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/c/a/a$d;II)V

    invoke-direct {p0, v5, p4, v6, v7}, Landroid/support/c/a/a;->a(Landroid/support/c/a/a$d;Landroid/graphics/Rect;II)V

    return-void
.end method

.method a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/o;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, p3}, Landroid/support/c/a/a;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)Z
    .locals 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_2

    invoke-virtual {p0, v9}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move v0, v8

    :goto_1
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v8, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/support/c/a/a$d;

    invoke-virtual {v7}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v1

    or-int v0, v8, v1

    invoke-virtual {v7, p4, v1}, Landroid/support/c/a/a$d;->a(IZ)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v7, p4, v0}, Landroid/support/c/a/a$d;->a(IZ)V

    move v0, v8

    goto :goto_1

    :cond_2
    return v8
.end method

.method b()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/c/a/a;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/a;->q:Landroid/support/c/a/a$e;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/c/a/a$e;

    invoke-direct {v0, p0}, Landroid/support/c/a/a$e;-><init>(Landroid/support/c/a/a;)V

    iput-object v0, p0, Landroid/support/c/a/a;->q:Landroid/support/c/a/a$e;

    :cond_0
    invoke-virtual {p0}, Landroid/support/c/a/a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/c/a/a;->q:Landroid/support/c/a/a$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/c/a/a;->r:Z

    return-void
.end method

.method b(Landroid/view/View;I)V
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/c/a/a$d;

    iget-object v0, v5, Landroid/support/c/a/a$d;->k:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {}, Landroid/support/c/a/a;->e()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v0, v5, Landroid/support/c/a/a$d;->k:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Landroid/support/c/a/a;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v8, v9}, Landroid/support/c/a/a;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/support/c/a/a;->a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/c/a/a$d;II)V

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v5, v4, v6, v7}, Landroid/support/c/a/a;->a(Landroid/support/c/a/a$d;Landroid/graphics/Rect;II)V

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v6, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    if-eqz v1, :cond_1

    invoke-static {p1, v1}, Landroid/support/v4/f/t;->d(Landroid/view/View;I)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p1, v2}, Landroid/support/v4/f/t;->c(Landroid/view/View;I)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v5, Landroid/support/c/a/a$d;->k:Landroid/view/View;

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/c/a/a$b;->b(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;)Z

    :cond_3
    invoke-static {v3}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    invoke-static {v9}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    invoke-static {v4}, Landroid/support/c/a/a;->a(Landroid/graphics/Rect;)V

    :cond_4
    return-void

    :cond_5
    move v0, v8

    goto :goto_0
.end method

.method b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0, p2}, Landroid/support/c/a/a$d;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/View;II)V
    .locals 9

    iget-object v0, p0, Landroid/support/c/a/a;->w:Landroid/support/v4/f/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/f/o;->a(Landroid/view/View;Landroid/view/View;II)V

    iput-object p2, p0, Landroid/support/c/a/a;->p:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v8, :cond_2

    invoke-virtual {p0, v7}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0, p4}, Landroid/support/c/a/a$d;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/c/a/a$b;->b(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method c()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/c/a/a;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/a;->q:Landroid/support/c/a/a$e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/c/a/a;->q:Landroid/support/c/a/a$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/c/a/a;->r:Z

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 5

    iget-object v0, p0, Landroid/support/c/a/a;->w:Landroid/support/v4/f/o;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/f/o;->a(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0, p2}, Landroid/support/c/a/a$d;->b(I)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, p0, v3, p1, p2}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;I)V

    :cond_1
    invoke-virtual {v0, p2}, Landroid/support/c/a/a$d;->a(I)V

    invoke-virtual {v0}, Landroid/support/c/a/a$d;->g()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/a;->p:Landroid/view/View;

    return-void
.end method

.method c(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0}, Landroid/support/c/a/a$d;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/c/a/a$d;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Landroid/support/c/a/a$d;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/c/a/a$d;

    invoke-direct {v0, v1, v1}, Landroid/support/c/a/a$d;-><init>(II)V

    return-object v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    iget-object v1, v0, Landroid/support/c/a/a$d;->a:Landroid/support/c/a/a$b;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/c/a/a$d;->a:Landroid/support/c/a/a$b;

    invoke-virtual {v1, p0, p2}, Landroid/support/c/a/a$b;->b(Landroid/support/c/a/a;Landroid/view/View;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Landroid/support/c/a/a;->k:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/support/c/a/a;->k:Landroid/graphics/Paint;

    :cond_0
    iget-object v2, p0, Landroid/support/c/a/a;->k:Landroid/graphics/Paint;

    iget-object v0, v0, Landroid/support/c/a/a$d;->a:Landroid/support/c/a/a$b;

    invoke-virtual {v0, p0, p2}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/c/a/a;->k:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/support/c/a/a;->a(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/c/a/a;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/support/c/a/a;->getDrawableState()[I

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/c/a/a;->invalidate()V

    :cond_1
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/c/a/a;->d()Landroid/support/c/a/a$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/c/a/a;->a(Landroid/util/AttributeSet;)Landroid/support/c/a/a$d;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/c/a/a;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/c/a/a$d;

    move-result-object v0

    return-object v0
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/c/a/a;->f()V

    iget-object v0, p0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLastWindowInsets()Landroid/support/v4/f/z;
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/a;->w:Landroid/support/v4/f/o;

    invoke-virtual {v0}, Landroid/support/v4/f/o;->a()I

    move-result v0

    return v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/c/a/a;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/c/a/a;->a(Z)V

    iget-boolean v0, p0, Landroid/support/c/a/a;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/a;->q:Landroid/support/c/a/a$e;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/c/a/a$e;

    invoke-direct {v0, p0}, Landroid/support/c/a/a$e;-><init>(Landroid/support/c/a/a;)V

    iput-object v0, p0, Landroid/support/c/a/a;->q:Landroid/support/c/a/a$e;

    :cond_0
    invoke-virtual {p0}, Landroid/support/c/a/a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/c/a/a;->q:Landroid/support/c/a/a$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/f/t;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/f/t;->k(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/c/a/a;->m:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0, v2}, Landroid/support/c/a/a;->a(Z)V

    iget-boolean v0, p0, Landroid/support/c/a/a;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/a;->q:Landroid/support/c/a/a$e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/c/a/a;->q:Landroid/support/c/a/a$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/a;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/a;->p:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/c/a/a;->onStopNestedScroll(Landroid/view/View;)V

    :cond_1
    iput-boolean v2, p0, Landroid/support/c/a/a;->m:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/support/c/a/a;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    invoke-virtual {v0}, Landroid/support/v4/f/z;->b()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/c/a/a;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Landroid/support/c/a/a;->a(Z)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/c/a/a;->a(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-direct {p0, v3}, Landroid/support/c/a/a;->a(Z)V

    :cond_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-static {p0}, Landroid/support/v4/f/t;->f(Landroid/view/View;)I

    move-result v3

    iget-object v0, p0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    iget-object v0, p0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/c/a/a$d;

    invoke-virtual {v1}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0, v0, v3}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0, v0, v3}, Landroid/support/c/a/a;->a(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    invoke-direct/range {p0 .. p0}, Landroid/support/c/a/a;->f()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/c/a/a;->a()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/c/a/a;->getPaddingLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/c/a/a;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/c/a/a;->getPaddingRight()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/c/a/a;->getPaddingBottom()I

    move-result v3

    invoke-static/range {p0 .. p0}, Landroid/support/v4/f/t;->f(Landroid/view/View;)I

    move-result v17

    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    move v9, v1

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    add-int v22, v15, v16

    add-int v23, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/c/a/a;->getSuggestedMinimumWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/c/a/a;->getSuggestedMinimumHeight()I

    move-result v12

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/support/v4/f/t;->l(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v10, v1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v24

    const/4 v1, 0x0

    move v14, v1

    :goto_2
    move/from16 v0, v24

    if-ge v14, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/c/a/a;->g:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    move v1, v11

    move v2, v12

    move v3, v13

    :goto_3
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v9, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v10, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/c/a/a$d;

    const/4 v5, 0x0

    iget v1, v8, Landroid/support/c/a/a$d;->e:I

    if-ltz v1, :cond_5

    if-eqz v18, :cond_5

    iget v1, v8, Landroid/support/c/a/a$d;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/c/a/a;->b(I)I

    move-result v1

    iget v2, v8, Landroid/support/c/a/a$d;->c:I

    invoke-static {v2}, Landroid/support/c/a/a;->d(I)I

    move-result v2

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/support/v4/f/d;->a(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    const/4 v4, 0x5

    if-ne v2, v4, :cond_8

    if-eqz v9, :cond_8

    :cond_4
    const/4 v2, 0x0

    sub-int v4, v19, v16

    sub-int v1, v4, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_5
    :goto_4
    if-eqz v10, :cond_c

    invoke-static {v3}, Landroid/support/v4/f/t;->l(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    invoke-virtual {v1}, Landroid/support/v4/f/z;->a()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    invoke-virtual {v2}, Landroid/support/v4/f/z;->c()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    invoke-virtual {v2}, Landroid/support/v4/f/z;->b()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/c/a/a;->s:Landroid/support/v4/f/z;

    invoke-virtual {v4}, Landroid/support/v4/f/z;->d()I

    move-result v4

    add-int/2addr v2, v4

    sub-int v1, v19, v1

    move/from16 v0, v18

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sub-int v1, v21, v2

    move/from16 v0, v20

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_5
    invoke-virtual {v8}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v7}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/c/a/a;->a(Landroid/view/View;IIII)V

    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v1, v1, v22

    iget v2, v8, Landroid/support/c/a/a$d;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v8, Landroid/support/c/a/a$d;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v1, v1, v23

    iget v2, v8, Landroid/support/c/a/a$d;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v8, Landroid/support/c/a/a$d;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v11, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v3, v4

    goto/16 :goto_3

    :cond_8
    const/4 v4, 0x5

    if-ne v2, v4, :cond_9

    if-eqz v9, :cond_a

    :cond_9
    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    if-eqz v9, :cond_5

    :cond_a
    const/4 v2, 0x0

    sub-int/2addr v1, v15

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_4

    :cond_b
    const/high16 v1, -0x1000000

    and-int/2addr v1, v11

    move/from16 v0, p1

    invoke-static {v13, v0, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v11, 0x10

    move/from16 v0, p2

    invoke-static {v12, v0, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/support/c/a/a;->setMeasuredDimension(II)V

    return-void

    :cond_c
    move/from16 v6, p2

    move/from16 v4, p1

    goto :goto_5
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 11

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v10

    move v8, v9

    move v7, v9

    :goto_0
    if-ge v8, v10, :cond_2

    invoke-virtual {p0, v8}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move v0, v7

    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0, v9}, Landroid/support/c/a/a$d;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    or-int/2addr v0, v7

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/c/a/a;->a(I)V

    :cond_3
    return v7

    :cond_4
    move v0, v7

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v9

    move v7, v8

    move v6, v8

    :goto_0
    if-ge v7, v9, :cond_2

    invoke-virtual {p0, v7}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move v0, v6

    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0, v8}, Landroid/support/c/a/a$d;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    or-int/2addr v0, v6

    goto :goto_1

    :cond_2
    return v6

    :cond_3
    move v0, v6

    goto :goto_1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/c/a/a;->a(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/c/a/a;->a(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/c/a/a;->b(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    instance-of v0, p1, Landroid/support/c/a/a$f;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void

    :cond_1
    check-cast p1, Landroid/support/c/a/a$f;

    invoke-virtual {p1}, Landroid/support/c/a/a$f;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v2, p1, Landroid/support/c/a/a$f;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v4}, Landroid/support/c/a/a;->a(Landroid/view/View;)Landroid/support/c/a/a$d;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v5

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    invoke-virtual {v5, p0, v4, v0}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/os/Parcelable;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    new-instance v2, Landroid/support/c/a/a$f;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/support/c/a/a$f;-><init>(Landroid/os/Parcelable;)V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getChildCount()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v5}, Landroid/support/c/a/a$b;->d(Landroid/support/c/a/a;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v3, v2, Landroid/support/c/a/a$f;->a:Landroid/util/SparseArray;

    return-object v2
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/c/a/a;->a(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/c/a/a;->c(Landroid/view/View;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    iget-object v0, p0, Landroid/support/c/a/a;->o:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-direct {p0, p1, v10}, Landroid/support/c/a/a;->a(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/c/a/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v3, p0, Landroid/support/c/a/a;->o:Landroid/view/View;

    invoke-virtual {v0, p0, v3, p1}, Landroid/support/c/a/a$b;->b(Landroid/support/c/a/a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    move v8, v0

    :goto_1
    iget-object v0, p0, Landroid/support/c/a/a;->o:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v8, v0

    :cond_0
    :goto_2
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    if-eq v9, v10, :cond_3

    if-ne v9, v4, :cond_4

    :cond_3
    invoke-direct {p0, v7}, Landroid/support/c/a/a;->a(Z)V

    :cond_4
    return v8

    :cond_5
    if-eqz v1, :cond_0

    if-nez v2, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-object v2, v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move v8, v7

    goto :goto_1

    :cond_8
    move v1, v0

    move v8, v7

    goto :goto_1

    :cond_9
    move v1, v7

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/a$d;

    invoke-virtual {v0}, Landroid/support/c/a/a$d;->a()Landroid/support/c/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/c/a/a$b;->a(Landroid/support/c/a/a;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/c/a/a;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/c/a/a;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/c/a/a;->l:Z

    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Landroid/support/c/a/a;->g()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/c/a/a;->e:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    iget-object v2, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/c/a/a;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object v0, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/f/t;->f(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v2, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/c/a/a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    invoke-static {p0}, Landroid/support/v4/f/t;->d(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/c/a/a;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/c/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/c/a/a;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/a;->u:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
