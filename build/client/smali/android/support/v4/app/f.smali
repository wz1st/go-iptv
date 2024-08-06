.class public Landroid/support/v4/app/f;
.super Landroid/support/v4/app/w;

# interfaces
.implements Landroid/arch/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/f$a;,
        Landroid/support/v4/app/f$b;
    }
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/h;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:I

.field i:Landroid/support/v4/e/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/o",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/arch/lifecycle/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/w;-><init>()V

    new-instance v0, Landroid/support/v4/app/f$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/f$1;-><init>(Landroid/support/v4/app/f;)V

    iput-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/app/f$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/f$a;-><init>(Landroid/support/v4/app/f;)V

    invoke-static {v0}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/i;)Landroid/support/v4/app/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->e:Z

    return-void
.end method

.method static a(I)V
    .locals 2

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/app/j;Landroid/arch/lifecycle/c$b;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/app/j;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/e;->a()Landroid/arch/lifecycle/c;

    move-result-object v3

    invoke-virtual {v3}, Landroid/arch/lifecycle/c;->a()Landroid/arch/lifecycle/c$b;

    move-result-object v3

    sget-object v4, Landroid/arch/lifecycle/c$b;->d:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/c$b;->a(Landroid/arch/lifecycle/c$b;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v0, Landroid/support/v4/app/e;->T:Landroid/arch/lifecycle/f;

    invoke-virtual {v1, p1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$b;)V

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/e;->k()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, Landroid/support/v4/app/f;->a(Landroid/support/v4/app/j;Landroid/arch/lifecycle/c$b;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private g()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/f;->f()Landroid/support/v4/app/j;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/c$b;->c:Landroid/arch/lifecycle/c$b;

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->a(Landroid/support/v4/app/j;Landroid/arch/lifecycle/c$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/c;
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/w;->a()Landroid/arch/lifecycle/c;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/h;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/e;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/w;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/arch/lifecycle/p;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/f;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/f;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/f$b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v4/app/f$b;->b:Landroid/arch/lifecycle/p;

    iput-object v0, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    if-nez v0, :cond_2

    new-instance v0, Landroid/arch/lifecycle/p;

    invoke-direct {v0}, Landroid/arch/lifecycle/p;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    return-object v0
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->h()V

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/w;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/f;->c:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/f;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/f;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/support/v4/app/f;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/app/s;->a(Landroid/arch/lifecycle/e;)Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/s;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->a()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/j;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/app/f;->invalidateOptionsMenu()V

    return-void
.end method

.method public f()Landroid/support/v4/app/j;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->a()Landroid/support/v4/app/j;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->b()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    invoke-virtual {v2, v1}, Landroid/support/v4/e/o;->c(I)V

    if-nez v0, :cond_1

    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/h;->a(Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/e;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/support/v4/app/a;->a()Landroid/support/v4/app/a$a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/app/a$a;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/w;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->a()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-super {p0}, Landroid/support/v4/app/w;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/w;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->b()V

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/e;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/w;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v4/app/f;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/f$b;

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/f$b;->b:Landroid/arch/lifecycle/p;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/f$b;->b:Landroid/arch/lifecycle/p;

    iput-object v3, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    :cond_0
    if-eqz p1, :cond_2

    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/support/v4/app/f$b;->c:Landroid/support/v4/app/l;

    :goto_0
    invoke-virtual {v4, v3, v0}, Landroid/support/v4/app/h;->a(Landroid/os/Parcelable;Landroid/support/v4/app/l;)V

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/f;->h:I

    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    array-length v0, v1

    array-length v4, v3

    if-eq v0, v4, :cond_5

    :cond_1
    const-string v0, "FragmentActivity"

    const-string v1, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v4/e/o;

    invoke-direct {v0}, Landroid/support/v4/e/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    iput v2, p0, Landroid/support/v4/app/f;->h:I

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->e()V

    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/support/v4/e/o;

    array-length v4, v1

    invoke-direct {v0, v4}, Landroid/support/v4/e/o;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    move v0, v2

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    aget v5, v1, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/e/o;->b(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/w;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {p0}, Landroid/support/v4/app/f;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/h;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/w;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/app/f;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/w;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/f;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/w;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/w;->onDestroy()V

    iget-object v0, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/f;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    invoke-virtual {v0}, Landroid/arch/lifecycle/p;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->k()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/w;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->l()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/w;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/h;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/h;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->a(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/w;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->b()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/w;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/h;->b(Landroid/view/Menu;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x2

    invoke-super {p0}, Landroid/support/v4/app/w;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/f;->c()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->i()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->b(Z)V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/w;->onPostResume()V

    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/f;->c()V

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->m()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/f;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/h;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/w;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const v3, 0xffff

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->b()V

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    invoke-virtual {v2, v1}, Landroid/support/v4/e/o;->c(I)V

    if-nez v0, :cond_1

    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/h;->a(Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    and-int v0, p1, v3

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/e;->a(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/w;->onResume()V

    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->d:Z

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->m()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/f;->d()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->d()Landroid/support/v4/app/l;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/f$b;

    invoke-direct {v0}, Landroid/support/v4/app/f$b;-><init>()V

    iput-object v1, v0, Landroid/support/v4/app/f$b;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/f;->j:Landroid/arch/lifecycle/p;

    iput-object v1, v0, Landroid/support/v4/app/f$b;->b:Landroid/arch/lifecycle/p;

    iput-object v2, v0, Landroid/support/v4/app/f$b;->c:Landroid/support/v4/app/l;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/w;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/support/v4/app/f;->g()V

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->c()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->b()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "android:support:next_request_index"

    iget v1, p0, Landroid/support/v4/app/f;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->b()I

    move-result v0

    new-array v2, v0, [I

    iget-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->b()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->b()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->d(I)I

    move-result v0

    aput v0, v2, v1

    iget-object v0, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/w;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/f;->e:Z

    iget-boolean v0, p0, Landroid/support/v4/app/f;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->c:Z

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->f()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->b()V

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->m()Z

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->g()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->b()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/w;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/f;->e:Z

    invoke-direct {p0}, Landroid/support/v4/app/f;->g()V

    iget-object v0, p0, Landroid/support/v4/app/f;->b:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->j()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/f;->g:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/f;->a(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/w;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/f;->g:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/f;->a(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/w;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/f;->f:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/f;->a(I)V

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/w;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/f;->f:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/f;->a(I)V

    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/w;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
