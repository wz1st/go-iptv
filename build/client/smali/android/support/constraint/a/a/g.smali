.class public Landroid/support/constraint/a/a/g;
.super Landroid/support/constraint/a/a/q;


# instance fields
.field private aA:Z

.field private aB:Landroid/support/constraint/a/a/p;

.field private aC:I

.field private aD:Z

.field private aE:Z

.field protected ai:Landroid/support/constraint/a/e;

.field aj:I

.field ak:I

.field al:I

.field am:I

.field an:I

.field ao:I

.field ap:[Landroid/support/constraint/a/a/d;

.field aq:[Landroid/support/constraint/a/a/d;

.field public ar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/constraint/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public as:Z

.field public at:Z

.field public au:Z

.field public av:I

.field public aw:I

.field public ax:Z

.field ay:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/constraint/a/a/q;-><init>()V

    iput-boolean v1, p0, Landroid/support/constraint/a/a/g;->aA:Z

    new-instance v0, Landroid/support/constraint/a/e;

    invoke-direct {v0}, Landroid/support/constraint/a/e;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    iput v1, p0, Landroid/support/constraint/a/a/g;->an:I

    iput v1, p0, Landroid/support/constraint/a/a/g;->ao:I

    new-array v0, v2, [Landroid/support/constraint/a/a/d;

    iput-object v0, p0, Landroid/support/constraint/a/a/g;->ap:[Landroid/support/constraint/a/a/d;

    new-array v0, v2, [Landroid/support/constraint/a/a/d;

    iput-object v0, p0, Landroid/support/constraint/a/a/g;->aq:[Landroid/support/constraint/a/a/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    iput-boolean v1, p0, Landroid/support/constraint/a/a/g;->as:Z

    iput-boolean v1, p0, Landroid/support/constraint/a/a/g;->at:Z

    iput-boolean v1, p0, Landroid/support/constraint/a/a/g;->au:Z

    iput v1, p0, Landroid/support/constraint/a/a/g;->av:I

    iput v1, p0, Landroid/support/constraint/a/a/g;->aw:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/support/constraint/a/a/g;->aC:I

    iput-boolean v1, p0, Landroid/support/constraint/a/a/g;->ax:Z

    iput-boolean v1, p0, Landroid/support/constraint/a/a/g;->aD:Z

    iput-boolean v1, p0, Landroid/support/constraint/a/a/g;->aE:Z

    iput v1, p0, Landroid/support/constraint/a/a/g;->ay:I

    return-void
.end method

.method private V()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/g;->an:I

    iput v0, p0, Landroid/support/constraint/a/a/g;->ao:I

    return-void
.end method

.method private d(Landroid/support/constraint/a/a/f;)V
    .locals 5

    iget v0, p0, Landroid/support/constraint/a/a/g;->an:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->aq:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->aq:[Landroid/support/constraint/a/a/d;

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->aq:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/d;

    iput-object v0, p0, Landroid/support/constraint/a/a/g;->aq:[Landroid/support/constraint/a/a/d;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/g;->aq:[Landroid/support/constraint/a/a/d;

    iget v1, p0, Landroid/support/constraint/a/a/g;->an:I

    new-instance v2, Landroid/support/constraint/a/a/d;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->M()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Landroid/support/constraint/a/a/d;-><init>(Landroid/support/constraint/a/a/f;IZ)V

    aput-object v2, v0, v1

    iget v0, p0, Landroid/support/constraint/a/a/g;->an:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a/g;->an:I

    return-void
.end method

.method private e(Landroid/support/constraint/a/a/f;)V
    .locals 5

    iget v0, p0, Landroid/support/constraint/a/a/g;->ao:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->ap:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->ap:[Landroid/support/constraint/a/a/d;

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->ap:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/d;

    iput-object v0, p0, Landroid/support/constraint/a/a/g;->ap:[Landroid/support/constraint/a/a/d;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/g;->ap:[Landroid/support/constraint/a/a/d;

    iget v1, p0, Landroid/support/constraint/a/a/g;->ao:I

    new-instance v2, Landroid/support/constraint/a/a/d;

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->M()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Landroid/support/constraint/a/a/d;-><init>(Landroid/support/constraint/a/a/f;IZ)V

    aput-object v2, v0, v1

    iget v0, p0, Landroid/support/constraint/a/a/g;->ao:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a/g;->ao:I

    return-void
.end method


# virtual methods
.method public J()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/g;->aC:I

    return v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/constraint/a/a/g;->aD:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/constraint/a/a/g;->aE:Z

    return v0
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/constraint/a/a/g;->aA:Z

    return v0
.end method

.method public N()V
    .locals 21

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/constraint/a/a/g;->I:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/constraint/a/a/g;->J:I

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->p()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->r()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/constraint/a/a/g;->aD:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/constraint/a/a/g;->aE:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->D:Landroid/support/constraint/a/a/f;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->aB:Landroid/support/constraint/a/a/p;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/constraint/a/a/p;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/support/constraint/a/a/p;-><init>(Landroid/support/constraint/a/a/f;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/constraint/a/a/g;->aB:Landroid/support/constraint/a/a/p;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->aB:Landroid/support/constraint/a/a/p;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/a/p;->a(Landroid/support/constraint/a/a/f;)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/a/a/g;->aj:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->h(I)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/a/a/g;->ak:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->i(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->E()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/e;->g()Landroid/support/constraint/a/c;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/c;)V

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/a/a/g;->aC:I

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->u(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->Q()V

    :cond_1
    const/16 v1, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->u(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->R()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/constraint/a/e;->c:Z

    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v2, 0x1

    aget-object v15, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v2, 0x0

    aget-object v16, v1, v2

    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->V()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    const/4 v2, 0x0

    new-instance v3, Landroid/support/constraint/a/a/h;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Landroid/support/constraint/a/a/h;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v3, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-eq v1, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v3, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v3, :cond_7

    :cond_4
    const/4 v1, 0x1

    move v3, v1

    :goto_2
    const/4 v1, 0x0

    move v10, v1

    :goto_3
    move/from16 v0, v17

    if-ge v10, v0, :cond_18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/constraint/a/a/g;->ax:Z

    if-nez v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/a/a/h;

    iget-boolean v1, v1, Landroid/support/constraint/a/a/h;->d:Z

    if-eqz v1, :cond_8

    :goto_4
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/constraint/a/a/g;->I:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/constraint/a/a/g;->J:I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/a/e;->c:Z

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    move v3, v1

    goto :goto_2

    :cond_8
    const/16 v1, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->u(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/a/a/h;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/h;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    :cond_9
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->V()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v6, v1

    :goto_6
    move/from16 v0, v18

    if-ge v6, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/a/a/f;

    instance-of v7, v1, Landroid/support/constraint/a/a/q;

    if-eqz v7, :cond_a

    check-cast v1, Landroid/support/constraint/a/a/q;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/q;->N()V

    :cond_a
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/a/a/h;

    iget-object v1, v1, Landroid/support/constraint/a/a/h;->a:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    goto :goto_5

    :cond_c
    const/4 v6, 0x1

    move v7, v4

    :goto_7
    if-eqz v6, :cond_17

    add-int/lit8 v9, v7, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/e;->b()V

    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->V()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->b(Landroid/support/constraint/a/e;)V

    const/4 v1, 0x0

    move v4, v1

    :goto_8
    move/from16 v0, v18

    if-ge v4, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/a/a/f;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    invoke-virtual {v1, v7}, Landroid/support/constraint/a/a/f;->b(Landroid/support/constraint/a/e;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->d(Landroid/support/constraint/a/e;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_e

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/e;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_e
    :goto_9
    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    sget-object v4, Landroid/support/constraint/a/a/k;->a:[Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/e;[Z)V

    :cond_f
    :goto_a
    const/4 v4, 0x0

    if-eqz v3, :cond_14

    const/16 v1, 0x8

    if-ge v9, v1, :cond_14

    sget-object v1, Landroid/support/constraint/a/a/k;->a:[Z

    const/4 v6, 0x2

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_14

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move v6, v1

    :goto_b
    move/from16 v0, v18

    if-ge v6, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/a/a/f;

    iget v0, v1, Landroid/support/constraint/a/a/f;->I:I

    move/from16 v19, v0

    invoke-virtual {v1}, Landroid/support/constraint/a/a/f;->p()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v0, v1, Landroid/support/constraint/a/a/f;->J:I

    move/from16 v19, v0

    invoke-virtual {v1}, Landroid/support/constraint/a/a/f;->r()I

    move-result v1

    add-int v1, v1, v19

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_b

    :catch_0
    move-exception v1

    move v4, v6

    :goto_c
    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXCEPTION : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->c(Landroid/support/constraint/a/e;)V

    const/4 v1, 0x0

    move v4, v1

    :goto_d
    move/from16 v0, v18

    if-ge v4, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/a/a/f;

    iget-object v6, v1, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    sget-object v7, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v6, v7, :cond_11

    invoke-virtual {v1}, Landroid/support/constraint/a/a/f;->p()I

    move-result v6

    invoke-virtual {v1}, Landroid/support/constraint/a/a/f;->q()I

    move-result v7

    if-ge v6, v7, :cond_11

    sget-object v1, Landroid/support/constraint/a/a/k;->a:[Z

    const/4 v4, 0x2

    const/4 v6, 0x1

    aput-boolean v6, v1, v4

    goto/16 :goto_a

    :cond_11
    iget-object v6, v1, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sget-object v7, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v6, v7, :cond_12

    invoke-virtual {v1}, Landroid/support/constraint/a/a/f;->r()I

    move-result v6

    invoke-virtual {v1}, Landroid/support/constraint/a/a/f;->s()I

    move-result v1

    if-ge v6, v1, :cond_12

    sget-object v1, Landroid/support/constraint/a/a/k;->a:[Z

    const/4 v4, 0x2

    const/4 v6, 0x1

    aput-boolean v6, v1, v4

    goto/16 :goto_a

    :cond_12
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_d

    :cond_13
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/a/a/g;->P:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/constraint/a/a/g;->Q:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v7, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    move-object/from16 v0, v16

    if-ne v0, v7, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->p()I

    move-result v7

    if-ge v7, v1, :cond_20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->j(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v4, 0x0

    sget-object v5, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const/4 v1, 0x1

    move v5, v4

    :goto_e
    sget-object v4, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v15, v4, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->r()I

    move-result v4

    if-ge v4, v6, :cond_1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/a/g;->k(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v4, 0x1

    sget-object v5, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    aput-object v5, v1, v4

    const/4 v5, 0x1

    const/4 v4, 0x1

    :cond_14
    :goto_f
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/a/a/g;->P:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->p()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->p()I

    move-result v6

    if-le v1, v6, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->j(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v4, 0x0

    sget-object v5, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    aput-object v5, v1, v4

    const/4 v5, 0x1

    const/4 v4, 0x1

    :cond_15
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/a/a/g;->Q:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->r()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->r()I

    move-result v6

    if-le v1, v6, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->k(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v4, 0x1

    sget-object v5, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    aput-object v5, v1, v4

    const/4 v5, 0x1

    const/4 v1, 0x1

    :goto_10
    if-nez v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    sget-object v6, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v6, :cond_1c

    if-lez v13, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->p()I

    move-result v4

    if-le v4, v13, :cond_1c

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/constraint/a/a/g;->aD:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v5, 0x0

    sget-object v6, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    aput-object v6, v1, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/constraint/a/a/g;->j(I)V

    const/4 v1, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v6, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v5, v6, :cond_16

    if-lez v14, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->r()I

    move-result v5

    if-le v5, v14, :cond_16

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/constraint/a/a/g;->aE:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v5, 0x1

    sget-object v6, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    aput-object v6, v1, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/constraint/a/a/g;->k(I)V

    const/4 v1, 0x1

    :cond_16
    :goto_12
    move v6, v1

    move v7, v9

    move v5, v4

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/a/a/h;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/h;->b()V

    goto/16 :goto_4

    :cond_18
    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->D:Landroid/support/constraint/a/a/f;

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/a/a/g;->P:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->p()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/g;->Q:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->r()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/g;->aB:Landroid/support/constraint/a/a/p;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/support/constraint/a/a/p;->b(Landroid/support/constraint/a/a/f;)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/g;->aj:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/g;->al:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->j(I)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/constraint/a/a/g;->ak:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/g;->am:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->k(I)V

    :goto_13
    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v2, 0x1

    aput-object v15, v1, v2

    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/e;->g()Landroid/support/constraint/a/c;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/c;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->T()Landroid/support/constraint/a/a/g;

    move-result-object v1

    move-object/from16 v0, p0

    if-ne v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/g;->D()V

    :cond_1a
    return-void

    :cond_1b
    move-object/from16 v0, p0

    iput v11, v0, Landroid/support/constraint/a/a/g;->I:I

    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/constraint/a/a/g;->J:I

    goto :goto_13

    :catch_1
    move-exception v1

    goto/16 :goto_c

    :cond_1c
    move v4, v5

    goto/16 :goto_11

    :cond_1d
    move v4, v5

    goto/16 :goto_12

    :cond_1e
    move v1, v4

    goto/16 :goto_10

    :cond_1f
    move v4, v1

    goto/16 :goto_f

    :cond_20
    move v1, v4

    goto/16 :goto_e
.end method

.method public O()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->Q()V

    iget v0, p0, Landroid/support/constraint/a/a/g;->aC:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/g;->b(I)V

    return-void
.end method

.method public P()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {p0, v1}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    invoke-virtual {v0, v3, v2}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;F)V

    invoke-virtual {v1, v3, v2}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/a/m;F)V

    return-void
.end method

.method public Q()V
    .locals 3

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->b()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public R()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/g;->u(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/g;->aC:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/g;->b(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->P()V

    return-void
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/g;->aC:I

    return-void
.end method

.method a(Landroid/support/constraint/a/a/f;I)V
    .locals 1

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Landroid/support/constraint/a/a/g;->d(Landroid/support/constraint/a/a/f;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/constraint/a/a/g;->e(Landroid/support/constraint/a/a/f;)V

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/a/e;[Z)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    aput-boolean v2, p2, v7

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/g;->c(Landroid/support/constraint/a/e;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/f;->c(Landroid/support/constraint/a/e;)V

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v4, v4, v2

    sget-object v5, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->p()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->q()I

    move-result v5

    if-ge v4, v5, :cond_0

    aput-boolean v6, p2, v7

    :cond_0
    iget-object v4, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v4, v4, v6

    sget-object v5, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->r()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->s()I

    move-result v0

    if-ge v4, v0, :cond_1

    aput-boolean v6, p2, v7

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/constraint/a/a/g;->aA:Z

    return-void
.end method

.method public b(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/constraint/a/a/q;->b(I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/f;->b(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Landroid/support/constraint/a/e;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/e;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->az:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    instance-of v4, v0, Landroid/support/constraint/a/a/g;

    if-eqz v4, :cond_4

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v4, v4, v2

    iget-object v5, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v5, v5, v7

    sget-object v6, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v6, :cond_0

    sget-object v6, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/f$a;)V

    :cond_0
    sget-object v6, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v5, v6, :cond_1

    sget-object v6, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/a/f;->b(Landroid/support/constraint/a/a/f$a;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/e;)V

    sget-object v6, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v6, :cond_2

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/f$a;)V

    :cond_2
    sget-object v4, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v5, v4, :cond_3

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/f;->b(Landroid/support/constraint/a/a/f$a;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, v0}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/e;Landroid/support/constraint/a/a/f;)V

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/e;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/support/constraint/a/a/g;->an:I

    if-lez v0, :cond_6

    invoke-static {p0, p1, v2}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/e;I)V

    :cond_6
    iget v0, p0, Landroid/support/constraint/a/a/g;->ao:I

    if-lez v0, :cond_7

    invoke-static {p0, p1, v7}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/g;Landroid/support/constraint/a/e;I)V

    :cond_7
    return v7
.end method

.method public f()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->ai:Landroid/support/constraint/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/e;->b()V

    iput v1, p0, Landroid/support/constraint/a/a/g;->aj:I

    iput v1, p0, Landroid/support/constraint/a/a/g;->al:I

    iput v1, p0, Landroid/support/constraint/a/a/g;->ak:I

    iput v1, p0, Landroid/support/constraint/a/a/g;->am:I

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Landroid/support/constraint/a/a/g;->ax:Z

    invoke-super {p0}, Landroid/support/constraint/a/a/q;->f()V

    return-void
.end method

.method public f(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->c:Landroid/support/constraint/a/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->c:Landroid/support/constraint/a/a/n;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/n;->a(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/g;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->d:Landroid/support/constraint/a/a/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->d:Landroid/support/constraint/a/a/n;

    invoke-virtual {v0, p2}, Landroid/support/constraint/a/a/n;->a(I)V

    :cond_1
    return-void
.end method

.method public u(I)Z
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/g;->aC:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
