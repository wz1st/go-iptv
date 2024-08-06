.class Landroid/support/v4/app/q$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/q;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroid/support/v4/app/q;


# direct methods
.method constructor <init>(Landroid/support/v4/app/q;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/q$3;->g:Landroid/support/v4/app/q;

    iput-object p2, p0, Landroid/support/v4/app/q$3;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/app/q$3;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/v4/app/q$3;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroid/support/v4/app/q$3;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/q$3;->e:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/v4/app/q$3;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/q$3;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/q$3;->g:Landroid/support/v4/app/q;

    iget-object v1, p0, Landroid/support/v4/app/q$3;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/q$3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/q;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/q$3;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/q$3;->g:Landroid/support/v4/app/q;

    iget-object v1, p0, Landroid/support/v4/app/q$3;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/q$3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/q;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/q$3;->e:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/q$3;->g:Landroid/support/v4/app/q;

    iget-object v1, p0, Landroid/support/v4/app/q$3;->e:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/q$3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/q;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
