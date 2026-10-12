.class public Landroid/support/constraint/a/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/a/f$a;
    }
.end annotation


# static fields
.field public static R:F


# instance fields
.field protected A:[Landroid/support/constraint/a/a/e;

.field protected B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field protected C:[Landroid/support/constraint/a/a/f$a;

.field D:Landroid/support/constraint/a/a/f;

.field E:I

.field F:I

.field protected G:F

.field protected H:I

.field protected I:I

.field protected J:I

.field K:I

.field L:I

.field protected M:I

.field protected N:I

.field O:I

.field protected P:I

.field protected Q:I

.field S:F

.field T:F

.field U:Z

.field V:Z

.field W:Z

.field X:Z

.field Y:Z

.field Z:I

.field public a:I

.field aa:I

.field ab:Z

.field ac:Z

.field ad:[F

.field protected ae:[Landroid/support/constraint/a/a/f;

.field protected af:[Landroid/support/constraint/a/a/f;

.field ag:Landroid/support/constraint/a/a/f;

.field ah:Landroid/support/constraint/a/a/f;

.field private ai:[I

.field private aj:F

.field private ak:I

.field private al:I

.field private am:I

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:Ljava/lang/Object;

.field private ar:I

.field private as:I

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field public b:I

.field c:Landroid/support/constraint/a/a/n;

.field d:Landroid/support/constraint/a/a/n;

.field e:I

.field f:I

.field g:[I

.field h:I

.field i:I

.field j:F

.field k:I

.field l:I

.field m:F

.field n:Z

.field o:Z

.field p:I

.field q:F

.field r:Landroid/support/constraint/a/a/h;

.field s:Landroid/support/constraint/a/a/e;

.field t:Landroid/support/constraint/a/a/e;

.field u:Landroid/support/constraint/a/a/e;

.field v:Landroid/support/constraint/a/a/e;

.field w:Landroid/support/constraint/a/a/e;

.field x:Landroid/support/constraint/a/a/e;

.field y:Landroid/support/constraint/a/a/e;

.field z:Landroid/support/constraint/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroid/support/constraint/a/a/f;->R:F

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Landroid/support/constraint/a/a/f;->a:I

    iput v6, p0, Landroid/support/constraint/a/a/f;->b:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->e:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->f:I

    new-array v0, v5, [I

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->g:[I

    iput v3, p0, Landroid/support/constraint/a/a/f;->h:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->i:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/a/a/f;->j:F

    iput v3, p0, Landroid/support/constraint/a/a/f;->k:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->l:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/a/a/f;->m:F

    iput v6, p0, Landroid/support/constraint/a/a/f;->p:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/a/a/f;->q:F

    iput-object v4, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->ai:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/f;->aj:F

    new-instance v0, Landroid/support/constraint/a/a/e;

    sget-object v1, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/e;-><init>(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    new-instance v0, Landroid/support/constraint/a/a/e;

    sget-object v1, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/e;-><init>(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    new-instance v0, Landroid/support/constraint/a/a/e;

    sget-object v1, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/e;-><init>(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    new-instance v0, Landroid/support/constraint/a/a/e;

    sget-object v1, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/e;-><init>(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    new-instance v0, Landroid/support/constraint/a/a/e;

    sget-object v1, Landroid/support/constraint/a/a/e$c;->f:Landroid/support/constraint/a/a/e$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/e;-><init>(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    new-instance v0, Landroid/support/constraint/a/a/e;

    sget-object v1, Landroid/support/constraint/a/a/e$c;->h:Landroid/support/constraint/a/a/e$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/e;-><init>(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->x:Landroid/support/constraint/a/a/e;

    new-instance v0, Landroid/support/constraint/a/a/e;

    sget-object v1, Landroid/support/constraint/a/a/e$c;->i:Landroid/support/constraint/a/a/e$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/e;-><init>(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->y:Landroid/support/constraint/a/a/e;

    new-instance v0, Landroid/support/constraint/a/a/e;

    sget-object v1, Landroid/support/constraint/a/a/e$c;->g:Landroid/support/constraint/a/a/e$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/e;-><init>(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/support/constraint/a/a/e;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    new-array v0, v5, [Landroid/support/constraint/a/a/f$a;

    sget-object v1, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    aput-object v1, v0, v7

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    iput-object v4, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    iput v3, p0, Landroid/support/constraint/a/a/f;->E:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->F:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/f;->G:F

    iput v6, p0, Landroid/support/constraint/a/a/f;->H:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->I:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->J:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->K:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->L:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->ak:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->al:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->am:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->an:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->M:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->N:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->O:I

    sget v0, Landroid/support/constraint/a/a/f;->R:F

    iput v0, p0, Landroid/support/constraint/a/a/f;->S:F

    sget v0, Landroid/support/constraint/a/a/f;->R:F

    iput v0, p0, Landroid/support/constraint/a/a/f;->T:F

    iput v3, p0, Landroid/support/constraint/a/a/f;->ar:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->as:I

    iput-object v4, p0, Landroid/support/constraint/a/a/f;->at:Ljava/lang/String;

    iput-object v4, p0, Landroid/support/constraint/a/a/f;->au:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->W:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->X:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->Y:Z

    iput v3, p0, Landroid/support/constraint/a/a/f;->Z:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->aa:I

    new-array v0, v5, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->ad:[F

    new-array v0, v5, [Landroid/support/constraint/a/a/f;

    aput-object v4, v0, v3

    aput-object v4, v0, v7

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->ae:[Landroid/support/constraint/a/a/f;

    new-array v0, v5, [Landroid/support/constraint/a/a/f;

    aput-object v4, v0, v3

    aput-object v4, v0, v7

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->af:[Landroid/support/constraint/a/a/f;

    iput-object v4, p0, Landroid/support/constraint/a/a/f;->ag:Landroid/support/constraint/a/a/f;

    iput-object v4, p0, Landroid/support/constraint/a/a/f;->ah:Landroid/support/constraint/a/a/f;

    invoke-direct {p0}, Landroid/support/constraint/a/a/f;->J()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private J()V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->x:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->y:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/support/constraint/a/e;ZLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/a/f$a;ZLandroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/e;IIIIFZZIIIFZ)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v17

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v10

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/support/constraint/a/e;->c:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget v2, v2, Landroid/support/constraint/a/a/m;->i:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    iget v2, v2, Landroid/support/constraint/a/a/m;->i:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v2

    iget-wide v4, v2, Landroid/support/constraint/a/f;->s:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->s:J

    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/e;)V

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/e;)V

    if-nez p15, :cond_1

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v2

    iget-wide v6, v2, Landroid/support/constraint/a/f;->B:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, Landroid/support/constraint/a/f;->B:J

    :cond_3
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v11

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v13

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v12, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    if-eqz v13, :cond_33

    add-int/lit8 v5, v5, 0x1

    move v9, v5

    :goto_1
    if-eqz p14, :cond_6

    const/16 p16, 0x3

    :cond_6
    sget-object v5, Landroid/support/constraint/a/a/f$1;->b:[I

    invoke-virtual/range {p5 .. p5}, Landroid/support/constraint/a/a/f$a;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/f;->as:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_32

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_3
    if-eqz p20, :cond_8

    if-nez v11, :cond_b

    if-nez v12, :cond_b

    if-nez v13, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    :cond_8
    :goto_4
    if-nez v2, :cond_d

    if-eqz p6, :cond_c

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-lez p11, :cond_9

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p11

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_9
    const v5, 0x7fffffff

    move/from16 v0, p12

    if-ge v0, v5, :cond_30

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p12

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    move/from16 v16, v2

    :goto_5
    if-eqz p20, :cond_a

    if-eqz p15, :cond_18

    :cond_a
    const/4 v2, 0x2

    if-ge v9, v2, :cond_1

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    const/4 v2, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto/16 :goto_0

    :pswitch_0
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_3
    const/4 v2, 0x1

    const/4 v5, 0x4

    move/from16 v0, p16

    if-ne v0, v5, :cond_7

    const/4 v2, 0x0

    goto :goto_2

    :cond_b
    if-eqz v11, :cond_8

    if-nez v12, :cond_8

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->e()I

    move-result v6

    const/4 v7, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1, v6, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_4

    :cond_c
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    move/from16 v16, v2

    goto :goto_5

    :cond_d
    const/4 v6, -0x2

    move/from16 v0, p17

    if-ne v0, v6, :cond_e

    move/from16 p17, v5

    :cond_e
    const/4 v6, -0x2

    move/from16 v0, p18

    if-ne v0, v6, :cond_f

    move/from16 p18, v5

    :cond_f
    if-lez p17, :cond_10

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p17

    invoke-virtual {v0, v3, v4, v1, v6}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    move/from16 v0, p17

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_10
    if-lez p18, :cond_31

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p18

    invoke-virtual {v0, v3, v4, v1, v6}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    move/from16 v0, p18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v8, v5

    :goto_6
    const/4 v5, 0x1

    move/from16 v0, p16

    if-ne v0, v5, :cond_15

    if-eqz p2, :cond_13

    const/4 v5, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    :cond_11
    :goto_7
    if-eqz v2, :cond_30

    const/4 v5, 0x2

    if-eq v9, v5, :cond_30

    if-nez p14, :cond_30

    const/4 v5, 0x0

    move/from16 v0, p17

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez p18, :cond_12

    move/from16 v0, p18

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_12
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    move/from16 v16, v5

    goto/16 :goto_5

    :cond_13
    if-eqz p15, :cond_14

    const/4 v5, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_7

    :cond_14
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_7

    :cond_15
    const/4 v5, 0x2

    move/from16 v0, p16

    if-ne v0, v5, :cond_11

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->d()Landroid/support/constraint/a/a/e$c;

    move-result-object v2

    sget-object v5, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    if-eq v2, v5, :cond_16

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->d()Landroid/support/constraint/a/a/e$c;

    move-result-object v2

    sget-object v5, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    if-ne v2, v5, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    sget-object v5, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    sget-object v5, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v5

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v2

    move/from16 v7, p19

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    const/4 v2, 0x0

    goto :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    sget-object v5, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    sget-object v5, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v5

    goto :goto_8

    :cond_18
    if-nez v11, :cond_1a

    if-nez v12, :cond_1a

    if-nez v13, :cond_1a

    if-eqz p2, :cond_19

    const/4 v2, 0x0

    const/4 v4, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_19
    :goto_9
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto/16 :goto_0

    :cond_1a
    if-eqz v11, :cond_1b

    if-nez v12, :cond_1b

    if-eqz p2, :cond_19

    const/4 v2, 0x0

    const/4 v4, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_9

    :cond_1b
    if-nez v11, :cond_1c

    if-eqz v12, :cond_1c

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/e;->e()I

    move-result v2

    neg-int v2, v2

    const/4 v5, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v2, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-eqz p2, :cond_19

    const/4 v2, 0x0

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_9

    :cond_1c
    if-eqz v11, :cond_19

    if-eqz v12, :cond_19

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x5

    if-eqz v16, :cond_2b

    if-eqz p2, :cond_1d

    if-nez p11, :cond_1d

    const/4 v2, 0x0

    const/4 v7, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_1d
    if-nez p16, :cond_28

    const/4 v2, 0x6

    if-gtz p18, :cond_1e

    if-lez p17, :cond_1f

    :cond_1e
    const/4 v2, 0x4

    const/4 v5, 0x1

    :cond_1f
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->e()I

    move-result v7

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1, v7, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/e;->e()I

    move-result v7

    neg-int v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v7, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-gtz p18, :cond_20

    if-lez p17, :cond_2f

    :cond_20
    const/4 v2, 0x1

    :goto_a
    move v6, v2

    move v15, v5

    :goto_b
    const/4 v14, 0x5

    const/4 v2, 0x5

    if-eqz v6, :cond_2d

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->e()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/e;->e()I

    move-result v12

    move-object/from16 v5, p1

    move-object v6, v4

    move-object/from16 v7, v17

    move/from16 v9, p13

    move-object v11, v3

    invoke-virtual/range {v5 .. v13}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    move-object/from16 v0, p7

    iget-object v5, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v5, v5, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    instance-of v5, v5, Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p8

    iget-object v6, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->a:Landroid/support/constraint/a/a/f;

    instance-of v6, v6, Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_2c

    if-nez v6, :cond_2c

    const/4 v2, 0x6

    const/4 v6, 0x1

    move/from16 v7, p2

    move v5, v14

    :goto_c
    if-eqz v15, :cond_21

    const/4 v5, 0x6

    const/4 v2, 0x6

    :cond_21
    if-nez v16, :cond_22

    if-nez v7, :cond_23

    :cond_22
    if-eqz v15, :cond_24

    :cond_23
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->e()I

    move-result v7

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1, v7, v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_24
    if-nez v16, :cond_25

    if-nez v6, :cond_26

    :cond_25
    if-eqz v15, :cond_27

    :cond_26
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/e;->e()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v5, v2}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_27
    if-eqz p2, :cond_19

    const/4 v2, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto/16 :goto_9

    :cond_28
    const/4 v2, 0x1

    move/from16 v0, p16

    if-ne v0, v2, :cond_29

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/4 v13, 0x6

    move v6, v2

    move v15, v5

    goto :goto_b

    :cond_29
    const/4 v2, 0x3

    move/from16 v0, p16

    if-ne v0, v2, :cond_2e

    const/4 v6, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x4

    if-nez p14, :cond_2a

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/f;->p:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2a

    if-gtz p18, :cond_2a

    const/4 v2, 0x6

    :cond_2a
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/e;->e()I

    move-result v7

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1, v7, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/e;->e()I

    move-result v7

    neg-int v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v7, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    move v15, v5

    goto/16 :goto_b

    :cond_2b
    const/4 v2, 0x1

    move v6, v2

    move v15, v5

    goto/16 :goto_b

    :cond_2c
    if-nez v5, :cond_2d

    if-eqz v6, :cond_2d

    const/4 v5, 0x6

    const/4 v7, 0x1

    move/from16 v6, p2

    goto :goto_c

    :cond_2d
    move/from16 v6, p2

    move/from16 v7, p2

    move v5, v14

    goto :goto_c

    :cond_2e
    move v15, v5

    goto/16 :goto_b

    :cond_2f
    move v2, v6

    goto/16 :goto_a

    :cond_30
    move/from16 v16, v2

    goto/16 :goto_5

    :cond_31
    move v8, v5

    goto/16 :goto_6

    :cond_32
    move/from16 v5, p10

    goto/16 :goto_3

    :cond_33
    move v9, v5

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(I)Z
    .locals 3

    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/f;->O:I

    return v0
.end method

.method public B()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->aq:Ljava/lang/Object;

    return-object v0
.end method

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

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method public D()V
    .locals 5

    iget v0, p0, Landroid/support/constraint/a/a/f;->I:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->J:I

    iget v2, p0, Landroid/support/constraint/a/a/f;->I:I

    iget v3, p0, Landroid/support/constraint/a/a/f;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/a/a/f;->J:I

    iget v4, p0, Landroid/support/constraint/a/a/f;->F:I

    add-int/2addr v3, v4

    iput v0, p0, Landroid/support/constraint/a/a/f;->ak:I

    iput v1, p0, Landroid/support/constraint/a/a/f;->al:I

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/constraint/a/a/f;->am:I

    sub-int v0, v3, v1

    iput v0, p0, Landroid/support/constraint/a/a/f;->an:I

    return-void
.end method

.method public E()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, v0, Landroid/support/constraint/a/a/g;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->k()Landroid/support/constraint/a/a/f;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/g;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/g;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->i()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public F()Landroid/support/constraint/a/a/f$a;
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public G()Landroid/support/constraint/a/a/f$a;
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public H()Z
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()Z
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;
    .locals 2

    sget-object v0, Landroid/support/constraint/a/a/f$1;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->x:Landroid/support/constraint/a/a/e;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->y:Landroid/support/constraint/a/a/e;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->S:F

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->I:I

    iput p2, p0, Landroid/support/constraint/a/a/f;->J:I

    return-void
.end method

.method public a(III)V
    .locals 1

    const/4 v0, 0x1

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/a/a/f;->c(II)V

    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/support/constraint/a/a/f;->X:Z

    return-void

    :cond_1
    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/a/a/f;->d(II)V

    goto :goto_0
.end method

.method public a(IIIF)V
    .locals 1

    iput p1, p0, Landroid/support/constraint/a/a/f;->e:I

    iput p2, p0, Landroid/support/constraint/a/a/f;->h:I

    iput p3, p0, Landroid/support/constraint/a/a/f;->i:I

    iput p4, p0, Landroid/support/constraint/a/a/f;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/a/a/f;->e:I

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sub-int v0, p3, p1

    sub-int v1, p4, p2

    iput p1, p0, Landroid/support/constraint/a/a/f;->I:I

    iput p2, p0, Landroid/support/constraint/a/a/f;->J:I

    iget v2, p0, Landroid/support/constraint/a/a/f;->as:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iput v4, p0, Landroid/support/constraint/a/a/f;->E:I

    iput v4, p0, Landroid/support/constraint/a/a/f;->F:I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v2, v2, v4

    sget-object v3, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/support/constraint/a/a/f;->E:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Landroid/support/constraint/a/a/f;->E:I

    :cond_1
    iget-object v2, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v2, v2, v5

    sget-object v3, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/support/constraint/a/a/f;->F:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Landroid/support/constraint/a/a/f;->F:I

    :cond_2
    iput v0, p0, Landroid/support/constraint/a/a/f;->E:I

    iput v1, p0, Landroid/support/constraint/a/a/f;->F:I

    iget v0, p0, Landroid/support/constraint/a/a/f;->F:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->Q:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Landroid/support/constraint/a/a/f;->Q:I

    iput v0, p0, Landroid/support/constraint/a/a/f;->F:I

    :cond_3
    iget v0, p0, Landroid/support/constraint/a/a/f;->E:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->P:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Landroid/support/constraint/a/a/f;->P:I

    iput v0, p0, Landroid/support/constraint/a/a/f;->E:I

    :cond_4
    iput-boolean v5, p0, Landroid/support/constraint/a/a/f;->X:Z

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/a/a/e$c;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;II)V
    .locals 7

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/e$b;->b:Landroid/support/constraint/a/a/e$b;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/e;IILandroid/support/constraint/a/a/e$b;IZ)Z

    return-void
.end method

.method public a(Landroid/support/constraint/a/a/f$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v0, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->ao:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/f;->j(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/constraint/a/a/f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    return-void
.end method

.method public a(Landroid/support/constraint/a/a/f;FI)V
    .locals 6

    sget-object v1, Landroid/support/constraint/a/a/e$c;->g:Landroid/support/constraint/a/a/e$c;

    sget-object v3, Landroid/support/constraint/a/a/e$c;->g:Landroid/support/constraint/a/a/e$c;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/e$c;II)V

    iput p2, p0, Landroid/support/constraint/a/a/f;->aj:F

    return-void
.end method

.method public a(Landroid/support/constraint/a/c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->x:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->y:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/e;)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v34

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    iget-object v4, v4, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v5, :cond_a

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    iget-object v4, v4, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    sget-object v6, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v6, :cond_c

    const/4 v4, 0x1

    move v7, v4

    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/constraint/a/a/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    check-cast v4, Landroid/support/constraint/a/a/g;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v6}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/f;I)V

    const/4 v4, 0x1

    move v8, v4

    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/constraint/a/a/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    check-cast v4, Landroid/support/constraint/a/a/g;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v6}, Landroid/support/constraint/a/a/g;->a(Landroid/support/constraint/a/a/f;I)V

    const/4 v4, 0x1

    :goto_3
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/constraint/a/a/f;->as:I

    const/16 v9, 0x8

    if-eq v6, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    iget-object v6, v6, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1, v9, v10}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_0
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/constraint/a/a/f;->as:I

    const/16 v9, 0x8

    if-eq v6, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    iget-object v6, v6, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v6, v1, v9, v10}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_1
    move/from16 v25, v7

    move v6, v5

    move/from16 v26, v4

    move/from16 v19, v8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->E:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/f;->P:I

    if-ge v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->P:I

    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/f;->F:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/f;->Q:I

    if-ge v5, v7, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/f;->Q:I

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-eq v7, v8, :cond_10

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    sget-object v9, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-eq v8, v9, :cond_11

    const/4 v8, 0x1

    :goto_5
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/f;->H:I

    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/constraint/a/a/f;->p:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/f;->G:F

    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/constraint/a/a/f;->q:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/f;->e:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/a/a/f;->f:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/constraint/a/a/f;->G:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_24

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/constraint/a/a/f;->as:I

    const/16 v13, 0x8

    if-eq v12, v13, :cond_24

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    sget-object v13, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v12, v13, :cond_4

    if-nez v9, :cond_4

    const/4 v9, 0x3

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    sget-object v13, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v12, v13, :cond_5

    if-nez v10, :cond_5

    const/4 v10, 0x3

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    sget-object v13, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v12, v13, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    sget-object v13, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v12, v13, :cond_12

    const/4 v12, 0x3

    if-ne v9, v12, :cond_12

    const/4 v12, 0x3

    if-ne v10, v12, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1, v7, v8}, Landroid/support/constraint/a/a/f;->a(ZZZZ)V

    move/from16 v27, v10

    move/from16 v20, v9

    move/from16 v28, v11

    move/from16 v29, v5

    move v14, v4

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->g:[I

    const/4 v5, 0x0

    aput v20, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->g:[I

    const/4 v5, 0x1

    aput v27, v4, v5

    if-eqz v28, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->p:I

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->p:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_15

    :cond_6
    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v5, :cond_16

    move-object/from16 v0, p0

    instance-of v4, v0, Landroid/support/constraint/a/a/g;

    if-eqz v4, :cond_16

    const/4 v10, 0x1

    :goto_8
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v24, 0x0

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->a:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    iget-object v4, v4, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v8

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    iget-object v4, v4, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v7

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v5, 0x0

    aget-object v9, v4, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/constraint/a/a/f;->I:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/a/a/f;->P:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->ai:[I

    const/4 v5, 0x0

    aget v16, v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/f;->S:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/f;->h:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/f;->i:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/f;->j:F

    move/from16 v23, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v24}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/e;ZLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/a/f$a;ZLandroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/e;IIIIFZZIIIFZ)V

    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_19

    :cond_9
    :goto_b
    return-void

    :cond_a
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_1

    :cond_d
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_1

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->H()Z

    move-result v4

    move v8, v4

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->I()Z

    move-result v4

    goto/16 :goto_3

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v7, v8, :cond_13

    const/4 v7, 0x3

    if-ne v9, v7, :cond_13

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/constraint/a/a/f;->p:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->q:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/f;->F:I

    int-to-float v7, v7

    mul-float/2addr v4, v7

    float-to-int v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    sget-object v7, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-eq v4, v7, :cond_25

    const/4 v9, 0x4

    const/4 v4, 0x0

    move/from16 v27, v10

    move/from16 v20, v9

    move/from16 v28, v4

    move/from16 v29, v5

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    sget-object v8, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v7, v8, :cond_24

    const/4 v7, 0x3

    if-ne v10, v7, :cond_24

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/constraint/a/a/f;->p:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/f;->H:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_14

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/f;->q:F

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/constraint/a/a/f;->q:F

    :cond_14
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/f;->q:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/f;->E:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    float-to-int v7, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget-object v8, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-eq v5, v8, :cond_23

    const/4 v10, 0x4

    const/4 v5, 0x0

    move/from16 v27, v10

    move/from16 v20, v9

    move/from16 v28, v5

    move/from16 v29, v7

    move v14, v4

    goto/16 :goto_6

    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne v4, v5, :cond_1d

    move-object/from16 v0, p0

    instance-of v4, v0, Landroid/support/constraint/a/a/g;

    if-eqz v4, :cond_1d

    const/4 v10, 0x1

    :goto_c
    if-eqz v28, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->p:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->p:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1e

    :cond_1a
    const/16 v18, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->O:I

    if-lez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v4

    iget v4, v4, Landroid/support/constraint/a/a/m;->i:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/constraint/a/a/m;->a(Landroid/support/constraint/a/e;)V

    :cond_1b
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    iget-object v4, v4, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v8

    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    iget-object v4, v4, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v7

    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v5, 0x1

    aget-object v9, v4, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/constraint/a/a/f;->J:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/a/a/f;->Q:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->ai:[I

    const/4 v5, 0x1

    aget v16, v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/f;->T:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/f;->k:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/f;->l:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/f;->m:F

    move/from16 v23, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, v25

    move/from16 v14, v29

    move/from16 v19, v26

    move/from16 v20, v27

    invoke-direct/range {v4 .. v24}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/e;ZLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/a/f$a;ZLandroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/e;IIIIFZZIIIFZ)V

    if-eqz v28, :cond_1c

    const/4 v10, 0x6

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/f;->p:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/f;->q:F

    move-object/from16 v4, p1

    move-object/from16 v5, v33

    move-object/from16 v6, v32

    move-object/from16 v7, v31

    move-object/from16 v8, v30

    invoke-virtual/range {v4 .. v10}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;FI)V

    :cond_1c
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->c()Landroid/support/constraint/a/a/f;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/f;->aj:F

    const/high16 v6, 0x42b40000    # 90.0f

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->e()I

    move-result v6

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/f;FI)V

    goto/16 :goto_b

    :cond_1d
    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_1e
    const/16 v18, 0x0

    goto/16 :goto_d

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/f;->A()I

    move-result v4

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    iget-object v4, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    iget-object v4, v4, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    const/16 v24, 0x0

    goto/16 :goto_e

    :cond_20
    const/4 v8, 0x0

    goto/16 :goto_f

    :cond_21
    const/4 v7, 0x0

    goto/16 :goto_10

    :cond_22
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/f;->q:F

    move-object/from16 v4, p1

    move-object/from16 v5, v31

    move-object/from16 v6, v30

    move-object/from16 v7, v33

    move-object/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;FI)V

    goto/16 :goto_11

    :cond_23
    move/from16 v27, v10

    move/from16 v20, v9

    move/from16 v28, v11

    move/from16 v29, v7

    move v14, v4

    goto/16 :goto_6

    :cond_24
    move/from16 v27, v10

    move/from16 v20, v9

    move/from16 v28, v11

    move/from16 v29, v5

    move v14, v4

    goto/16 :goto_6

    :cond_25
    move/from16 v27, v10

    move/from16 v20, v9

    move/from16 v28, v11

    move/from16 v29, v5

    goto/16 :goto_6
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/f;->aq:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/f;->at:Ljava/lang/String;

    return-void
.end method

.method public a(ZZZZ)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/constraint/a/a/f;->p:I

    if-ne v0, v2, :cond_0

    if-eqz p3, :cond_8

    if-nez p4, :cond_8

    iput v4, p0, Landroid/support/constraint/a/a/f;->p:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/constraint/a/a/f;->p:I

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_1
    iput v1, p0, Landroid/support/constraint/a/a/f;->p:I

    :cond_2
    :goto_1
    iget v0, p0, Landroid/support/constraint/a/a/f;->p:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    iput v4, p0, Landroid/support/constraint/a/a/f;->p:I

    :cond_4
    :goto_2
    iget v0, p0, Landroid/support/constraint/a/a/f;->p:I

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_c

    if-nez p2, :cond_c

    iput v4, p0, Landroid/support/constraint/a/a/f;->p:I

    :cond_5
    :goto_3
    iget v0, p0, Landroid/support/constraint/a/a/f;->p:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Landroid/support/constraint/a/a/f;->h:I

    if-lez v0, :cond_d

    iget v0, p0, Landroid/support/constraint/a/a/f;->k:I

    if-nez v0, :cond_d

    iput v4, p0, Landroid/support/constraint/a/a/f;->p:I

    :cond_6
    :goto_4
    iget v0, p0, Landroid/support/constraint/a/a/f;->p:I

    if-ne v0, v2, :cond_7

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    iget v0, p0, Landroid/support/constraint/a/a/f;->q:F

    div-float v0, v3, v0

    iput v0, p0, Landroid/support/constraint/a/a/f;->q:F

    iput v1, p0, Landroid/support/constraint/a/a/f;->p:I

    :cond_7
    return-void

    :cond_8
    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    iput v1, p0, Landroid/support/constraint/a/a/f;->p:I

    iget v0, p0, Landroid/support/constraint/a/a/f;->H:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->q:F

    div-float v0, v3, v0

    iput v0, p0, Landroid/support/constraint/a/a/f;->q:F

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Landroid/support/constraint/a/a/f;->p:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_a
    iput v4, p0, Landroid/support/constraint/a/a/f;->p:I

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/constraint/a/a/f;->q:F

    div-float v0, v3, v0

    iput v0, p0, Landroid/support/constraint/a/a/f;->q:F

    iput v1, p0, Landroid/support/constraint/a/a/f;->p:I

    goto :goto_2

    :cond_c
    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    iget v0, p0, Landroid/support/constraint/a/a/f;->q:F

    div-float v0, v3, v0

    iput v0, p0, Landroid/support/constraint/a/a/f;->q:F

    iput v1, p0, Landroid/support/constraint/a/a/f;->p:I

    goto :goto_3

    :cond_d
    iget v0, p0, Landroid/support/constraint/a/a/f;->h:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/support/constraint/a/a/f;->k:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/support/constraint/a/a/f;->q:F

    div-float v0, v3, v0

    iput v0, p0, Landroid/support/constraint/a/a/f;->q:F

    iput v1, p0, Landroid/support/constraint/a/a/f;->p:I

    goto :goto_4
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/f;->as:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/a/a/m;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->T:F

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-static {p1, p0}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/f;)V

    return-void
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->M:I

    iput p2, p0, Landroid/support/constraint/a/a/f;->N:I

    return-void
.end method

.method public b(IIIF)V
    .locals 1

    iput p1, p0, Landroid/support/constraint/a/a/f;->f:I

    iput p2, p0, Landroid/support/constraint/a/a/f;->k:I

    iput p3, p0, Landroid/support/constraint/a/a/f;->l:I

    iput p4, p0, Landroid/support/constraint/a/a/f;->m:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/a/a/f;->f:I

    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/a/a/f$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v0, Landroid/support/constraint/a/a/f$a;->b:Landroid/support/constraint/a/a/f$a;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->ap:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/f;->k(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/a/e;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    iget v0, p0, Landroid/support/constraint/a/a/f;->O:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iput v5, p0, Landroid/support/constraint/a/a/f;->G:F

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    add-int/lit8 v4, v6, -0x1

    if-ge v3, v4, :cond_4

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "W"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    :goto_2
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_6

    add-int/lit8 v2, v6, -0x1

    if-ge v0, v2, :cond_6

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v3, v2, v5

    if-lez v3, :cond_7

    cmpl-float v3, v0, v5

    if-lez v3, :cond_7

    if-ne v4, v1, :cond_5

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_3
    cmpl-float v1, v0, v5

    if-lez v1, :cond_1

    iput v0, p0, Landroid/support/constraint/a/a/f;->G:F

    iput v4, p0, Landroid/support/constraint/a/a/f;->H:I

    goto :goto_0

    :cond_3
    const-string v0, "H"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_1

    :cond_4
    move v3, v0

    move v4, v2

    goto :goto_2

    :cond_5
    div-float v0, v2, v0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_3

    :catch_0
    move-exception v0

    move v0, v5

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v0, v5

    goto :goto_3

    :cond_7
    move v0, v5

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/constraint/a/a/f;->n:Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(F)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->ad:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->ai:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public c(II)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/f;->I:I

    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/a/a/f;->E:I

    iget v0, p0, Landroid/support/constraint/a/a/f;->E:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->P:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->P:I

    iput v0, p0, Landroid/support/constraint/a/a/f;->E:I

    :cond_0
    return-void
.end method

.method public c(Landroid/support/constraint/a/e;)V
    .locals 9

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/high16 v7, -0x80000000

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v4

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v3

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    sub-int v5, v2, v4

    sub-int v6, v0, v3

    if-ltz v5, :cond_0

    if-ltz v6, :cond_0

    if-eq v4, v7, :cond_0

    if-eq v4, v8, :cond_0

    if-eq v3, v7, :cond_0

    if-eq v3, v8, :cond_0

    if-eq v2, v7, :cond_0

    if-eq v2, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    :cond_1
    invoke-virtual {p0, v4, v3, v2, v0}, Landroid/support/constraint/a/a/f;->a(IIII)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/constraint/a/a/f;->o:Z

    return-void
.end method

.method public d(F)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->ad:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->ai:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public d(II)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/f;->J:I

    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/a/a/f;->F:I

    iget v0, p0, Landroid/support/constraint/a/a/f;->F:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->Q:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->Q:I

    iput v0, p0, Landroid/support/constraint/a/a/f;->F:I

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/constraint/a/a/f;->e:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/f;->G:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/f;->h:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/f;->i:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->as:I

    return-void
.end method

.method e(II)V
    .locals 1

    if-nez p2, :cond_1

    iput p1, p0, Landroid/support/constraint/a/a/f;->K:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput p1, p0, Landroid/support/constraint/a/a/f;->L:I

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/constraint/a/a/f;->f:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/f;->G:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/f;->k:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/f;->l:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/constraint/a/a/f$a;->c:Landroid/support/constraint/a/a/f$a;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(I)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->p()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->r()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const v5, 0x7fffffff

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->w:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->x:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->y:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->z:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->i()V

    iput-object v6, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/f;->aj:F

    iput v3, p0, Landroid/support/constraint/a/a/f;->E:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->F:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/f;->G:F

    iput v4, p0, Landroid/support/constraint/a/a/f;->H:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->I:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->J:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->ak:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->al:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->am:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->an:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->M:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->N:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->O:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->P:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->Q:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->ao:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->ap:I

    sget v0, Landroid/support/constraint/a/a/f;->R:F

    iput v0, p0, Landroid/support/constraint/a/a/f;->S:F

    sget v0, Landroid/support/constraint/a/a/f;->R:F

    iput v0, p0, Landroid/support/constraint/a/a/f;->T:F

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    sget-object v1, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    aput-object v1, v0, v3

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->C:[Landroid/support/constraint/a/a/f$a;

    const/4 v1, 0x1

    sget-object v2, Landroid/support/constraint/a/a/f$a;->a:Landroid/support/constraint/a/a/f$a;

    aput-object v2, v0, v1

    iput-object v6, p0, Landroid/support/constraint/a/a/f;->aq:Ljava/lang/Object;

    iput v3, p0, Landroid/support/constraint/a/a/f;->ar:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->as:I

    iput-object v6, p0, Landroid/support/constraint/a/a/f;->au:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->U:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->V:Z

    iput v3, p0, Landroid/support/constraint/a/a/f;->Z:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->aa:I

    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->ab:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->ac:Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->ad:[F

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v3

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->ad:[F

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v0, v1

    iput v4, p0, Landroid/support/constraint/a/a/f;->a:I

    iput v4, p0, Landroid/support/constraint/a/a/f;->b:I

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->ai:[I

    aput v5, v0, v3

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->ai:[I

    const/4 v1, 0x1

    aput v5, v0, v1

    iput v3, p0, Landroid/support/constraint/a/a/f;->e:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->f:I

    iput v7, p0, Landroid/support/constraint/a/a/f;->j:F

    iput v7, p0, Landroid/support/constraint/a/a/f;->m:F

    iput v5, p0, Landroid/support/constraint/a/a/f;->i:I

    iput v5, p0, Landroid/support/constraint/a/a/f;->l:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->h:I

    iput v3, p0, Landroid/support/constraint/a/a/f;->k:I

    iput v4, p0, Landroid/support/constraint/a/a/f;->p:I

    iput v7, p0, Landroid/support/constraint/a/a/f;->q:F

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->c:Landroid/support/constraint/a/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->c:Landroid/support/constraint/a/a/n;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/n;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->d:Landroid/support/constraint/a/a/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->d:Landroid/support/constraint/a/a/n;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/n;->b()V

    :cond_1
    iput-object v6, p0, Landroid/support/constraint/a/a/f;->r:Landroid/support/constraint/a/a/h;

    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->W:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->X:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/f;->Y:Z

    return-void
.end method

.method public g(I)F
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->S:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/support/constraint/a/a/f;->T:F

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->A:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/a/a/m;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->I:I

    return-void
.end method

.method public h()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->s:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget v1, v1, Landroid/support/constraint/a/a/m;->i:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->u:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget v1, v1, Landroid/support/constraint/a/a/m;->i:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->t:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget v1, v1, Landroid/support/constraint/a/a/m;->i:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->v:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Landroid/support/constraint/a/a/m;

    move-result-object v1

    iget v1, v1, Landroid/support/constraint/a/a/m;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Landroid/support/constraint/a/a/n;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->c:Landroid/support/constraint/a/a/n;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/a/n;

    invoke-direct {v0}, Landroid/support/constraint/a/a/n;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->c:Landroid/support/constraint/a/a/n;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->c:Landroid/support/constraint/a/a/n;

    return-object v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->J:I

    return-void
.end method

.method public j()Landroid/support/constraint/a/a/n;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->d:Landroid/support/constraint/a/a/n;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/a/n;

    invoke-direct {v0}, Landroid/support/constraint/a/a/n;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->d:Landroid/support/constraint/a/a/n;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->d:Landroid/support/constraint/a/a/n;

    return-object v0
.end method

.method public j(I)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/f;->E:I

    iget v0, p0, Landroid/support/constraint/a/a/f;->E:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->P:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->P:I

    iput v0, p0, Landroid/support/constraint/a/a/f;->E:I

    :cond_0
    return-void
.end method

.method public k()Landroid/support/constraint/a/a/f;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->D:Landroid/support/constraint/a/a/f;

    return-object v0
.end method

.method public k(I)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/f;->F:I

    iget v0, p0, Landroid/support/constraint/a/a/f;->F:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->Q:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->Q:I

    iput v0, p0, Landroid/support/constraint/a/a/f;->F:I

    :cond_0
    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/f;->as:I

    return v0
.end method

.method public l(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/f;->P:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/a/a/f;->P:I

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->at:Ljava/lang/String;

    return-object v0
.end method

.method public m(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/f;->Q:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/a/a/f;->Q:I

    goto :goto_0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/f;->I:I

    return v0
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->ao:I

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/f;->J:I

    return v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->ap:I

    return-void
.end method

.method public p()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/f;->as:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/f;->E:I

    goto :goto_0
.end method

.method p(I)I
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/f;->K:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/support/constraint/a/a/f;->L:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/f;->ao:I

    return v0
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->O:I

    return-void
.end method

.method public r()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/f;->as:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/f;->F:I

    goto :goto_0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->Z:I

    return-void
.end method

.method public s()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/f;->ap:I

    return v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/f;->aa:I

    return-void
.end method

.method public t()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/f;->ak:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->M:I

    add-int/2addr v0, v1

    return v0
.end method

.method public t(I)Landroid/support/constraint/a/a/f$a;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->F()Landroid/support/constraint/a/a/f$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->G()Landroid/support/constraint/a/a/f$a;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->au:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->au:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->at:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->at:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") wrap: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->ao:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public u()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/f;->al:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->N:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected v()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/f;->I:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->M:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected w()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/f;->J:I

    iget v1, p0, Landroid/support/constraint/a/a/f;->N:I

    add-int/2addr v0, v1

    return v0
.end method

.method public x()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->n()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->E:I

    add-int/2addr v0, v1

    return v0
.end method

.method public y()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/f;->o()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->F:I

    add-int/2addr v0, v1

    return v0
.end method

.method public z()Z
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/f;->O:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
