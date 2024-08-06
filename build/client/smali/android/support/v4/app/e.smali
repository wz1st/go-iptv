.class public Landroid/support/v4/app/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/e;
.implements Landroid/arch/lifecycle/q;
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/e$a;,
        Landroid/support/v4/app/e$c;,
        Landroid/support/v4/app/e$b;
    }
.end annotation


# static fields
.field private static final X:Landroid/support/v4/e/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/n",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final a:Ljava/lang/Object;


# instance fields
.field A:Ljava/lang/String;

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field G:Z

.field H:Z

.field I:Landroid/view/ViewGroup;

.field J:Landroid/view/View;

.field K:Landroid/view/View;

.field L:Z

.field M:Z

.field N:Landroid/support/v4/app/e$a;

.field O:Z

.field P:Z

.field Q:F

.field R:Landroid/view/LayoutInflater;

.field S:Z

.field T:Landroid/arch/lifecycle/f;

.field U:Landroid/arch/lifecycle/f;

.field V:Landroid/arch/lifecycle/e;

.field W:Landroid/arch/lifecycle/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/j",
            "<",
            "Landroid/arch/lifecycle/e;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Landroid/os/Bundle;

.field d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Boolean;

.field f:I

.field g:Ljava/lang/String;

.field h:Landroid/os/Bundle;

.field i:Landroid/support/v4/app/e;

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:I

.field s:Landroid/support/v4/app/k;

.field t:Landroid/support/v4/app/i;

.field u:Landroid/support/v4/app/k;

.field v:Landroid/support/v4/app/l;

.field w:Landroid/arch/lifecycle/p;

.field x:Landroid/support/v4/app/e;

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/e/n;

    invoke-direct {v0}, Landroid/support/v4/e/n;-><init>()V

    sput-object v0, Landroid/support/v4/app/e;->X:Landroid/support/v4/e/n;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    iput v1, p0, Landroid/support/v4/app/e;->f:I

    iput v1, p0, Landroid/support/v4/app/e;->j:I

    iput-boolean v2, p0, Landroid/support/v4/app/e;->G:Z

    iput-boolean v2, p0, Landroid/support/v4/app/e;->M:Z

    new-instance v0, Landroid/arch/lifecycle/f;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/f;-><init>(Landroid/arch/lifecycle/e;)V

    iput-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    new-instance v0, Landroid/arch/lifecycle/j;

    invoke-direct {v0}, Landroid/arch/lifecycle/j;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->W:Landroid/arch/lifecycle/j;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/e;
    .locals 4

    :try_start_0
    sget-object v0, Landroid/support/v4/app/e;->X:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/e;->X:Landroid/support/v4/e/n;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/e/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p2}, Landroid/support/v4/app/e;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/app/e$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/support/v4/app/e$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Landroid/support/v4/app/e$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Landroid/support/v4/app/e$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": could not find Fragment constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Landroid/support/v4/app/e$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": calling Fragment constructor caused an exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/e$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/app/e;->X:Landroid/support/v4/e/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/e;->X:Landroid/support/v4/e/n;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/e/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v1, Landroid/support/v4/app/e;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aa()Landroid/support/v4/app/e$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/e$a;

    invoke-direct {v0}, Landroid/support/v4/app/e$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    return-object v0
.end method


# virtual methods
.method public A()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->k:Ljava/lang/Object;

    goto :goto_0
.end method

.method public B()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->l:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/e;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->A()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->l:Ljava/lang/Object;

    goto :goto_0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/i;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/e;->aa()Landroid/support/v4/app/e$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/e$a;->q:Z

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    iget-object v1, v1, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/i;

    invoke-virtual {v1}, Landroid/support/v4/app/i;->h()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->m:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/e$1;

    invoke-direct {v1, p0}, Landroid/support/v4/app/e$1;-><init>(Landroid/support/v4/app/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/e;->F()V

    goto :goto_0
.end method

.method F()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v4/app/e$c;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/e$a;->q:Z

    iget-object v1, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v1, v1, Landroid/support/v4/app/e$a;->r:Landroid/support/v4/app/e$c;

    iget-object v2, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iput-object v0, v2, Landroid/support/v4/app/e$a;->r:Landroid/support/v4/app/e$c;

    move-object v0, v1

    goto :goto_0
.end method

.method G()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/k;

    invoke-direct {v0}, Landroid/support/v4/app/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    iget-object v1, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    new-instance v2, Landroid/support/v4/app/e$2;

    invoke-direct {v2, p0}, Landroid/support/v4/app/e$2;-><init>(Landroid/support/v4/app/e;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/g;Landroid/support/v4/app/e;)V

    return-void
.end method

.method H()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->m()V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->g()Z

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->n()V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->p()V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_START:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_START:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    :cond_3
    return-void
.end method

.method I()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->m()V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->g()Z

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->o()V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->q()V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->g()Z

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_RESUME:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_RESUME:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    :cond_3
    return-void
.end method

.method J()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->m()V

    :cond_0
    return-void
.end method

.method K()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->v()V

    :cond_0
    return-void
.end method

.method L()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_PAUSE:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_PAUSE:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->r()V

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->p()V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method M()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_STOP:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_STOP:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->s()V

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->q()V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method N()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_DESTROY:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->t()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    iput-boolean v2, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->r()V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0}, Landroid/support/v4/app/s;->a(Landroid/arch/lifecycle/e;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()V

    iput-boolean v2, p0, Landroid/support/v4/app/e;->q:Z

    return-void
.end method

.method O()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_DESTROY:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->u()V

    :cond_0
    iput v2, p0, Landroid/support/v4/app/e;->b:I

    iput-boolean v2, p0, Landroid/support/v4/app/e;->H:Z

    iput-boolean v2, p0, Landroid/support/v4/app/e;->S:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->s()V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    return-void
.end method

.method P()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->u()V

    iput-object v1, p0, Landroid/support/v4/app/e;->R:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/e;->E:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->u()V

    iput-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    :cond_2
    return-void
.end method

.method Q()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget v0, v0, Landroid/support/v4/app/e$a;->d:I

    goto :goto_0
.end method

.method R()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget v0, v0, Landroid/support/v4/app/e$a;->e:I

    goto :goto_0
.end method

.method S()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget v0, v0, Landroid/support/v4/app/e$a;->f:I

    goto :goto_0
.end method

.method T()Landroid/support/v4/app/u;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->o:Landroid/support/v4/app/u;

    goto :goto_0
.end method

.method U()Landroid/support/v4/app/u;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->p:Landroid/support/v4/app/u;

    goto :goto_0
.end method

.method V()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->a:Landroid/view/View;

    goto :goto_0
.end method

.method W()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->b:Landroid/animation/Animator;

    goto :goto_0
.end method

.method X()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget v0, v0, Landroid/support/v4/app/e$a;->c:I

    goto :goto_0
.end method

.method Y()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-boolean v0, v0, Landroid/support/v4/app/e$a;->q:Z

    goto :goto_0
.end method

.method Z()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-boolean v0, v0, Landroid/support/v4/app/e$a;->s:Z

    goto :goto_0
.end method

.method public a()Landroid/arch/lifecycle/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    return-object v0
.end method

.method a(Ljava/lang/String;)Landroid/support/v4/app/e;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->b(Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/e;->aa()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/e$a;->d:I

    goto :goto_0
.end method

.method a(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/e;->aa()Landroid/support/v4/app/e$a;

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iput p1, v0, Landroid/support/v4/app/e$a;->e:I

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iput p2, v0, Landroid/support/v4/app/e$a;->f:I

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method final a(ILandroid/support/v4/app/e;)V
    .locals 2

    iput p1, p0, Landroid/support/v4/app/e;->f:I

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/app/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method a(Landroid/animation/Animator;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/e;->aa()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/e$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0, v0}, Landroid/support/v4/app/e;->a(Landroid/app/Activity;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->f()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/e;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->f()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->K:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/e;->d:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->i(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_CREATE:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    :cond_2
    return-void
.end method

.method a(Landroid/support/v4/app/e$c;)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/app/e;->aa()Landroid/support/v4/app/e$a;

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->r:Landroid/support/v4/app/e$c;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->r:Landroid/support/v4/app/e$c;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-boolean v0, v0, Landroid/support/v4/app/e$a;->q:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iput-object p1, v0, Landroid/support/v4/app/e$a;->r:Landroid/support/v4/app/e$c;

    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v4/app/e$c;->b()V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/e;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/e;->aa()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/e$a;->a:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->z:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->A:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->b:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->f:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->g:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->r:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->o:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->B:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->C:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->G:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->F:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->E:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->M:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->x:Landroid/support/v4/app/e;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->x:Landroid/support/v4/app/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->h:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/e;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->c:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/e;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/e;->i:Landroid/support/v4/app/e;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->i:Landroid/support/v4/app/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/e;->Q()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/e;->Q()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/e;->I:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->I:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/e;->K:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/app/e;->V()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/e;->V()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/e;->X()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/app/e;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/support/v4/app/s;->a(Landroid/arch/lifecycle/e;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/s;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(IZI)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Landroid/arch/lifecycle/p;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/e;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->w:Landroid/arch/lifecycle/p;

    if-nez v0, :cond_1

    new-instance v0, Landroid/arch/lifecycle/p;

    invoke-direct {v0}, Landroid/arch/lifecycle/p;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->w:Landroid/arch/lifecycle/p;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->w:Landroid/arch/lifecycle/p;

    return-object v0
.end method

.method b(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/e;->aa()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/e$a;->c:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Landroid/support/v4/app/e;->f:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/e;->h:Landroid/os/Bundle;

    return-void
.end method

.method b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->m()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->q:Z

    new-instance v0, Landroid/support/v4/app/e$3;

    invoke-direct {v0, p0}, Landroid/support/v4/app/e$3;-><init>(Landroid/support/v4/app/e;)V

    iput-object v0, p0, Landroid/support/v4/app/e;->V:Landroid/arch/lifecycle/e;

    iput-object v1, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->V:Landroid/arch/lifecycle/e;

    invoke-interface {v0}, Landroid/arch/lifecycle/e;->a()Landroid/arch/lifecycle/c;

    iget-object v0, p0, Landroid/support/v4/app/e;->W:Landroid/arch/lifecycle/j;

    iget-object v1, p0, Landroid/support/v4/app/e;->V:Landroid/arch/lifecycle/e;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/j;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->U:Landroid/arch/lifecycle/f;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v1, p0, Landroid/support/v4/app/e;->V:Landroid/arch/lifecycle/e;

    goto :goto_0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/e;->B:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/app/e;->F:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/app/e;->G:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/e;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/k;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->e(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method final c()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/app/e;->r:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/e;->B:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/app/e;->F:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/app/e;->G:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->a(Landroid/view/Menu;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/k;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method c(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/support/v4/app/e;->B:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/e;->F:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/app/e;->G:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/k;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/e;->R:Landroid/view/LayoutInflater;

    iget-object v0, p0, Landroid/support/v4/app/e;->R:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method d(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/e;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/e;->F:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/e;->G:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->b(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->b(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method d(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->b(Z)V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Z)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Z

    move-result v0

    goto :goto_0
.end method

.method d(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/support/v4/app/e;->B:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/k;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->g()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->b()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/e;->j()Landroid/support/v4/app/j;

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v1}, Landroid/support/v4/app/k;->x()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/f/f;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object v0
.end method

.method e(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->c(Z)V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->b(Z)V

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/e;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->g(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->n()V

    :cond_0
    return-void
.end method

.method f(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/e;->aa()Landroid/support/v4/app/e$a;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/e$a;->s:Z

    return-void
.end method

.method public final g()Landroid/support/v4/app/f;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->f()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/f;

    goto :goto_0
.end method

.method g(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/e;->G()V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    iget-object v2, p0, Landroid/support/v4/app/e;->v:Landroid/support/v4/app/l;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/k;->a(Landroid/os/Parcelable;Landroid/support/v4/app/l;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/e;->v:Landroid/support/v4/app/l;

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->n()V

    :cond_1
    return-void
.end method

.method public final h()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Landroid/support/v4/app/j;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    return-object v0
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public final j()Landroid/support/v4/app/j;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/e;->G()V

    iget v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->q()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    return-object v0

    :cond_1
    iget v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->p()V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->o()V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->n()V

    goto :goto_0
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method k()Landroid/support/v4/app/j;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    return-object v0
.end method

.method k(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->m()V

    :cond_0
    iput v1, p0, Landroid/support/v4/app/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->f(Landroid/os/Bundle;)V

    iput-boolean v1, p0, Landroid/support/v4/app/e;->S:Z

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_CREATE:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    return-void
.end method

.method public final l()Landroid/support/v4/app/e;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->x:Landroid/support/v4/app/e;

    return-object v0
.end method

.method l(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->m()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->h(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->o()V

    :cond_2
    return-void
.end method

.method public m()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    return-object v0
.end method

.method m(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->j(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->l()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->g()Landroid/support/v4/app/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/f;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    invoke-virtual {p0}, Landroid/support/v4/app/e;->g()Landroid/support/v4/app/f;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/f;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/e;->w:Landroid/arch/lifecycle/p;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->w:Landroid/arch/lifecycle/p;

    invoke-virtual {v0}, Landroid/arch/lifecycle/p;->a()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method t()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/e;->f:I

    iput-object v2, p0, Landroid/support/v4/app/e;->g:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/support/v4/app/e;->l:Z

    iput-boolean v1, p0, Landroid/support/v4/app/e;->m:Z

    iput-boolean v1, p0, Landroid/support/v4/app/e;->n:Z

    iput-boolean v1, p0, Landroid/support/v4/app/e;->o:Z

    iput-boolean v1, p0, Landroid/support/v4/app/e;->p:Z

    iput v1, p0, Landroid/support/v4/app/e;->r:I

    iput-object v2, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    iput-object v2, p0, Landroid/support/v4/app/e;->u:Landroid/support/v4/app/k;

    iput-object v2, p0, Landroid/support/v4/app/e;->t:Landroid/support/v4/app/i;

    iput v1, p0, Landroid/support/v4/app/e;->y:I

    iput v1, p0, Landroid/support/v4/app/e;->z:I

    iput-object v2, p0, Landroid/support/v4/app/e;->A:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/support/v4/app/e;->B:Z

    iput-boolean v1, p0, Landroid/support/v4/app/e;->C:Z

    iput-boolean v1, p0, Landroid/support/v4/app/e;->E:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/e/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/support/v4/app/e;->f:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/support/v4/app/e;->y:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/e;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/e;->A:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/e;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->H:Z

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->g:Ljava/lang/Object;

    goto :goto_0
.end method

.method public x()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->h:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/e;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->w()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->h:Ljava/lang/Object;

    goto :goto_0
.end method

.method public y()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->i:Ljava/lang/Object;

    goto :goto_0
.end method

.method public z()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->j:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/e;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/e;->y()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/e;->N:Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->j:Ljava/lang/Object;

    goto :goto_0
.end method
