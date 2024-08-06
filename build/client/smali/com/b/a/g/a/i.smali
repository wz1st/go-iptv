.class public abstract Lcom/b/a/g/a/i;
.super Lcom/b/a/g/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/g/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/b/a/g/a/a",
        "<TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static b:Z

.field private static c:Ljava/lang/Integer;


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/b/a/g/a/i$a;

.field private e:Landroid/view/View$OnAttachStateChangeListener;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/b/a/g/a/a;-><init>()V

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/b/a/g/a/i;->a:Landroid/view/View;

    new-instance v0, Lcom/b/a/g/a/i$a;

    invoke-direct {v0, p1}, Lcom/b/a/g/a/i$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/b/a/g/a/i;->d:Lcom/b/a/g/a/i$a;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/g/a/i;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/g/a/i;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/b/a/g/a/i;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/b/a/g/a/i;->e:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/g/a/i;->g:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/b/a/g/a/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/b/a/g/a/i;->b:Z

    iget-object v0, p0, Lcom/b/a/g/a/i;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a/i;->a:Landroid/view/View;

    sget-object v1, Lcom/b/a/g/a/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/g/a/i;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/g/a/i;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/b/a/g/a/i;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/b/a/g/a/i;->e:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/g/a/i;->g:Z

    goto :goto_0
.end method

.method private g()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/b/a/g/a/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/a/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a/i;->a:Landroid/view/View;

    sget-object v1, Lcom/b/a/g/a/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/b/a/g/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/b/a/g/a/i;->d:Lcom/b/a/g/a/i$a;

    invoke-virtual {v0}, Lcom/b/a/g/a/i$a;->b()V

    iget-boolean v0, p0, Lcom/b/a/g/a/i;->f:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/g/a/i;->f()V

    :cond_0
    return-void
.end method

.method public a(Lcom/b/a/g/a/g;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a/i;->d:Lcom/b/a/g/a/i$a;

    invoke-virtual {v0, p1}, Lcom/b/a/g/a/i$a;->a(Lcom/b/a/g/a/g;)V

    return-void
.end method

.method public a(Lcom/b/a/g/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/g/a/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Lcom/b/a/g/b;
    .locals 2

    invoke-direct {p0}, Lcom/b/a/g/a/i;->g()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/b/a/g/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/b/a/g/b;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/b/a/g/a/a;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/b/a/g/a/i;->a()V

    return-void
.end method

.method public b(Lcom/b/a/g/a/g;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a/i;->d:Lcom/b/a/g/a/i$a;

    invoke-virtual {v0, p1}, Lcom/b/a/g/a/i$a;->b(Lcom/b/a/g/a/g;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/g/a/i;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
