.class Lcom/airbnb/lottie/au;
.super Lcom/airbnb/lottie/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/au$a;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/av;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 4

    invoke-direct {p0, p6}, Lcom/airbnb/lottie/d;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p5}, Lcom/airbnb/lottie/j;->f()Lcom/airbnb/lottie/bm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au;->a(Lcom/airbnb/lottie/bm;)V

    if-eqz p2, :cond_1

    new-instance v0, Lcom/airbnb/lottie/au$a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/au;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/au$a;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p2}, Lcom/airbnb/lottie/bc;->a()Lcom/airbnb/lottie/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/a;->a()Lcom/airbnb/lottie/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/au$a;->c(Lcom/airbnb/lottie/ag;)V

    invoke-virtual {p5}, Lcom/airbnb/lottie/j;->e()Lcom/airbnb/lottie/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/c;->a()Lcom/airbnb/lottie/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/au$a;->e(Lcom/airbnb/lottie/ag;)V

    invoke-virtual {p2}, Lcom/airbnb/lottie/bc;->b()Lcom/airbnb/lottie/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/c;->a()Lcom/airbnb/lottie/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/au$a;->d(Lcom/airbnb/lottie/ag;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/av;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/airbnb/lottie/bj;->b()Lcom/airbnb/lottie/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v1

    invoke-virtual {p4}, Lcom/airbnb/lottie/bj;->a()Lcom/airbnb/lottie/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v2

    invoke-virtual {p4}, Lcom/airbnb/lottie/bj;->c()Lcom/airbnb/lottie/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/ag;Lcom/airbnb/lottie/ag;Lcom/airbnb/lottie/ag;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/au;->a(Lcom/airbnb/lottie/d;)V

    :cond_1
    if-eqz p3, :cond_5

    new-instance v1, Lcom/airbnb/lottie/au$a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/au;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/au$a;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1}, Lcom/airbnb/lottie/au$a;->e()V

    invoke-virtual {p3}, Lcom/airbnb/lottie/bi;->a()Lcom/airbnb/lottie/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/a;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/au$a;->c(Lcom/airbnb/lottie/ag;)V

    invoke-virtual {p5}, Lcom/airbnb/lottie/j;->e()Lcom/airbnb/lottie/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/c;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/au$a;->e(Lcom/airbnb/lottie/ag;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/bi;->b()Lcom/airbnb/lottie/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/c;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/au$a;->d(Lcom/airbnb/lottie/ag;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/bi;->c()Lcom/airbnb/lottie/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/au$a;->f(Lcom/airbnb/lottie/ag;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/bi;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/airbnb/lottie/bi;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/bi;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/airbnb/lottie/bi;->e()Lcom/airbnb/lottie/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/lottie/au$a;->a(Ljava/util/List;Lcom/airbnb/lottie/n;)V

    :cond_3
    invoke-virtual {p3}, Lcom/airbnb/lottie/bi;->f()Lcom/airbnb/lottie/bi$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/bi$b;)V

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/av;)V

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/airbnb/lottie/bj;->b()Lcom/airbnb/lottie/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v0

    invoke-virtual {p4}, Lcom/airbnb/lottie/bj;->a()Lcom/airbnb/lottie/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v2

    invoke-virtual {p4}, Lcom/airbnb/lottie/bj;->c()Lcom/airbnb/lottie/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/b;->a()Lcom/airbnb/lottie/ag;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/lottie/au$a;->a(Lcom/airbnb/lottie/ag;Lcom/airbnb/lottie/ag;Lcom/airbnb/lottie/ag;)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/au;->a(Lcom/airbnb/lottie/d;)V

    :cond_5
    return-void
.end method
