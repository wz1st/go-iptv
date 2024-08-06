.class public Landroid/support/constraint/a/a/i;
.super Landroid/support/constraint/a/a/f;


# instance fields
.field protected ai:F

.field protected aj:I

.field protected ak:I

.field private al:Landroid/support/constraint/a/a/e;

.field private am:I

.field private an:Z

.field private ao:I

.field private ap:Landroid/support/constraint/a/a/l;

.field private aq:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/constraint/a/a/f;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/a/a/i;->ai:F

    iput v2, p0, Landroid/support/constraint/a/a/i;->aj:I

    iput v2, p0, Landroid/support/constraint/a/a/i;->ak:I

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/e;

    iput-object v1, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    iput v0, p0, Landroid/support/constraint/a/a/i;->am:I

    iput-boolean v0, p0, Landroid/support/constraint/a/a/i;->an:Z

    iput v0, p0, Landroid/support/constraint/a/a/i;->ao:I

    new-instance v1, Landroid/support/constraint/a/a/l;

    invoke-direct {v1}, Landroid/support/constraint/a/a/l;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/a/a/i;->ap:Landroid/support/constraint/a/a/l;

    const/16 v1, 0x8

    iput v1, p0, Landroid/support/constraint/a/a/i;->aq:I

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->B:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->A:[Landroid/support/constraint/a/a/e;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/a/i;->A:[Landroid/support/constraint/a/a/e;

    iget-object v3, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public C()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/i;->am:I

    return v0
.end method

.method public a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;
    .locals 2

    sget-object v0, Landroid/support/constraint/a/a/i$1;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/support/constraint/a/a/i;->am:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    :goto_0
    return-object v0

    :pswitch_1
    iget v0, p0, Landroid/support/constraint/a/a/i;->am:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(I)V
    .locals 4

    iget v0, p0, Landroid/support/constraint/a/a/i;->am:I

    if-ne v0, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Landroid/support/constraint/a/a/i;->am:I

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Landroid/support/constraint/a/a/i;->am:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/e;

    iput-object v0, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    :goto_0
    iget-object v0, p0, Landroid/support/constraint/a/a/i;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->A:[Landroid/support/constraint/a/a/e;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/a/i;->A:[Landroid/support/constraint/a/a/e;

    iget-object v3, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/e;

    iput-object v0, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/a/e;)V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->k()Landroid/support/constraint/a/a/f;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/g;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v5

    sget-object v1, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v4

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->D:Landroid/support/constraint/a/a/f;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->D:Landroid/support/constraint/a/a/f;

    iget-object v1, v1, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v1, v1, v3

    sget-object v6, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v6, :cond_2

    move v1, v2

    :goto_1
    iget v6, p0, Landroid/support/constraint/a/a/i;->am:I

    if-nez v6, :cond_8

    sget-object v1, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v0

    iget-object v4, p0, Landroid/support/constraint/a/a/i;->D:Landroid/support/constraint/a/a/f;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/constraint/a/a/i;->D:Landroid/support/constraint/a/a/f;

    iget-object v4, v4, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v4, v4, v2

    sget-object v5, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v5, :cond_4

    :goto_2
    move-object v5, v1

    :goto_3
    iget v1, p0, Landroid/support/constraint/a/a/i;->aj:I

    if-eq v1, v8, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/a/a/i;->aj:I

    invoke-virtual {p1, v1, v4, v5, v9}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v3, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    iget v1, p0, Landroid/support/constraint/a/a/i;->ak:I

    if-eq v1, v8, :cond_7

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v0

    iget v4, p0, Landroid/support/constraint/a/a/i;->ak:I

    neg-int v4, v4

    invoke-virtual {p1, v1, v0, v4, v9}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v5}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v3, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    invoke-virtual {p1, v0, v1, v3, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_0

    :cond_7
    iget v1, p0, Landroid/support/constraint/a/a/i;->ai:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/a/a/i;->ai:F

    iget-boolean v5, p0, Landroid/support/constraint/a/a/i;->an:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;FZ)Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_8
    move v2, v1

    move-object v0, v4

    goto :goto_3
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)V
    .locals 7

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->k()Landroid/support/constraint/a/a/f;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->J()I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v5}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v5}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    iget v1, p0, Landroid/support/constraint/a/a/i;->aj:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/a/a/i;->aj:I

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v0, v0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/a/a/i;->aj:I

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/constraint/a/a/i;->ak:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/a/a/i;->ak:I

    neg-int v3, v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v0, v0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/a/a/i;->ak:I

    neg-int v2, v2

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/support/constraint/a/a/i;->ai:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/support/constraint/a/a/f;->E:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/a/a/i;->ai:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    iget-object v2, p0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget-object v0, v0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    invoke-virtual {v2, v4, v0, v1}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Landroid/support/constraint/a/a/i;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v5}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v5}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    iget v1, p0, Landroid/support/constraint/a/a/i;->aj:I

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/a/a/i;->aj:I

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v0, v0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/a/a/i;->aj:I

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Landroid/support/constraint/a/a/i;->ak:I

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget v3, p0, Landroid/support/constraint/a/a/i;->ak:I

    neg-int v3, v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget-object v0, v0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/a/a/i;->ak:I

    neg-int v2, v2

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Landroid/support/constraint/a/a/i;->ai:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/support/constraint/a/a/f;->F:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/a/a/i;->ai:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/constraint/a/a/i;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    iget-object v2, p0, Landroid/support/constraint/a/a/i;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget-object v0, v0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    invoke-virtual {v2, v4, v0, v1}, Landroid/support/constraint/a/a/m;->a(ILandroid/support/constraint/a/a/m;I)V

    goto/16 :goto_0
.end method

.method public c(Landroid/support/constraint/a/e;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->k()Landroid/support/constraint/a/a/f;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/i;->al:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroid/support/constraint/a/a/i;->am:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/i;->h(I)V

    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/i;->i(I)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->k()Landroid/support/constraint/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/i;->k(I)V

    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/i;->j(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/i;->h(I)V

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/i;->i(I)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->k()Landroid/support/constraint/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/i;->j(I)V

    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/i;->k(I)V

    goto :goto_0
.end method

.method public e(F)V
    .locals 2

    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroid/support/constraint/a/a/i;->ai:F

    iput v1, p0, Landroid/support/constraint/a/a/i;->aj:I

    iput v1, p0, Landroid/support/constraint/a/a/i;->ak:I

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/a/a/i;->ai:F

    iput p1, p0, Landroid/support/constraint/a/a/i;->aj:I

    iput v1, p0, Landroid/support/constraint/a/a/i;->ak:I

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/a/a/i;->ai:F

    iput v1, p0, Landroid/support/constraint/a/a/i;->aj:I

    iput p1, p0, Landroid/support/constraint/a/a/i;->ak:I

    :cond_0
    return-void
.end method
