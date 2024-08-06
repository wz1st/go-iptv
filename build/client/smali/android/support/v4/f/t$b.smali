.class Landroid/support/v4/f/t$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/f/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/v4/f/t$b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/f/t$b;->b:Ljava/util/WeakHashMap;

    iput-object v0, p0, Landroid/support/v4/f/t$b;->c:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/support/v4/f/t$b;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static a(Landroid/view/View;)Landroid/support/v4/f/t$b;
    .locals 2

    sget v0, Landroid/support/a/a$b;->tag_unhandled_key_event_manager:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/f/t$b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/f/t$b;

    invoke-direct {v0}, Landroid/support/v4/f/t$b;-><init>()V

    sget v1, Landroid/support/a/a$b;->tag_unhandled_key_event_manager:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/f/t$b;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/f/t$b;->c:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/f/t$b;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method private b(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/f/t$b;->b:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/t$b;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object p1, v2

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/v4/f/t$b;->b(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object p1, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/support/v4/f/t$b;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object p1, v2

    goto :goto_0
.end method

.method private b()V
    .locals 7

    iget-object v1, p0, Landroid/support/v4/f/t$b;->b:Ljava/util/WeakHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/f/t$b;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    :cond_0
    sget-object v1, Landroid/support/v4/f/t$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v4, Landroid/support/v4/f/t$b;->a:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/f/t$b;->b:Ljava/util/WeakHashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v4/f/t$b;->b:Ljava/util/WeakHashMap;

    :cond_2
    sget-object v1, Landroid/support/v4/f/t$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_5

    sget-object v1, Landroid/support/v4/f/t$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_4

    sget-object v1, Landroid/support/v4/f/t$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/support/v4/f/t$b;->b:Ljava/util/WeakHashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_2
    instance-of v1, v2, Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v5, p0, Landroid/support/v4/f/t$b;->b:Ljava/util/WeakHashMap;

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v1, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_2

    :cond_5
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 3

    sget v0, Landroid/support/a/a$b;->tag_unhandled_key_listeners:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/f/t$a;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/f/t$a;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method a(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/f/t$b;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/f/t$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/f/t$b;->d:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/f/t$b;->a()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/support/v4/f/t;->t(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1}, Landroid/support/v4/f/t$b;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method a(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/f/t$b;->b()V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v4/f/t$b;->b(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroid/support/v4/f/t$b;->a()Landroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
