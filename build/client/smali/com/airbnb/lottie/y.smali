.class Lcom/airbnb/lottie/y;
.super Lcom/airbnb/lottie/d;


# instance fields
.field private final c:Lcom/airbnb/lottie/bd;

.field private final d:Lcom/airbnb/lottie/j;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/bd;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    invoke-direct {p0, p6}, Lcom/airbnb/lottie/d;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/y;->c:Lcom/airbnb/lottie/bd;

    iput-object p5, p0, Lcom/airbnb/lottie/y;->d:Lcom/airbnb/lottie/j;

    invoke-direct {p0, p2, p3, p4}, Lcom/airbnb/lottie/y;->a(Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;)V

    return-void
.end method

.method private a(Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;)V
    .locals 9

    iget-object v0, p0, Lcom/airbnb/lottie/y;->d:Lcom/airbnb/lottie/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/y;->d:Lcom/airbnb/lottie/j;

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->f()Lcom/airbnb/lottie/bm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/y;->a(Lcom/airbnb/lottie/bm;)V

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/airbnb/lottie/y;->c:Lcom/airbnb/lottie/bd;

    invoke-virtual {v0}, Lcom/airbnb/lottie/bd;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    move v7, v0

    move-object v4, p3

    move-object v3, p2

    move-object v2, p1

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_a

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/airbnb/lottie/j;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/airbnb/lottie/j;

    move-object v5, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/airbnb/lottie/bi;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/airbnb/lottie/bi;

    move-object v3, v0

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/airbnb/lottie/bc;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/airbnb/lottie/bc;

    move-object v2, v0

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/airbnb/lottie/bj;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/airbnb/lottie/bj;

    move-object v4, v0

    goto :goto_1

    :cond_5
    instance-of v1, v0, Lcom/airbnb/lottie/bh;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/bh;

    new-instance v0, Lcom/airbnb/lottie/bg;

    invoke-virtual {p0}, Lcom/airbnb/lottie/y;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/bg;-><init>(Lcom/airbnb/lottie/bh;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/y;->a(Lcom/airbnb/lottie/d;)V

    goto :goto_1

    :cond_6
    instance-of v1, v0, Lcom/airbnb/lottie/ay;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/ay;

    new-instance v0, Lcom/airbnb/lottie/ax;

    invoke-virtual {p0}, Lcom/airbnb/lottie/y;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/ax;-><init>(Lcom/airbnb/lottie/ay;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/y;->a(Lcom/airbnb/lottie/d;)V

    goto :goto_1

    :cond_7
    instance-of v1, v0, Lcom/airbnb/lottie/p;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/p;

    new-instance v0, Lcom/airbnb/lottie/u;

    invoke-virtual {p0}, Lcom/airbnb/lottie/y;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/u;-><init>(Lcom/airbnb/lottie/p;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/y;->a(Lcom/airbnb/lottie/d;)V

    goto :goto_1

    :cond_8
    instance-of v1, v0, Lcom/airbnb/lottie/av;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/av;

    new-instance v0, Lcom/airbnb/lottie/au;

    invoke-virtual {p0}, Lcom/airbnb/lottie/y;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/au;-><init>(Lcom/airbnb/lottie/av;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/y;->a(Lcom/airbnb/lottie/d;)V

    goto :goto_1

    :cond_9
    instance-of v1, v0, Lcom/airbnb/lottie/bd;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/bd;

    new-instance v0, Lcom/airbnb/lottie/y;

    invoke-virtual {p0}, Lcom/airbnb/lottie/y;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/y;-><init>(Lcom/airbnb/lottie/bd;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/y;->a(Lcom/airbnb/lottie/d;)V

    goto :goto_1

    :cond_a
    return-void
.end method
