.class public Landroid/support/constraint/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/e$a;
    }
.end annotation


# static fields
.field public static g:Landroid/support/constraint/a/f;

.field private static h:I


# instance fields
.field a:I

.field b:[Landroid/support/constraint/a/b;

.field public c:Z

.field d:I

.field e:I

.field final f:Landroid/support/constraint/a/c;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/support/constraint/a/e$a;

.field private k:I

.field private l:I

.field private m:[Z

.field private n:I

.field private o:[Landroid/support/constraint/a/h;

.field private p:I

.field private q:[Landroid/support/constraint/a/b;

.field private final r:Landroid/support/constraint/a/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Landroid/support/constraint/a/e;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/support/constraint/a/e;->a:I

    iput-object v2, p0, Landroid/support/constraint/a/e;->i:Ljava/util/HashMap;

    const/16 v0, 0x20

    iput v0, p0, Landroid/support/constraint/a/e;->k:I

    iget v0, p0, Landroid/support/constraint/a/e;->k:I

    iput v0, p0, Landroid/support/constraint/a/e;->l:I

    iput-object v2, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    iput-boolean v1, p0, Landroid/support/constraint/a/e;->c:Z

    iget v0, p0, Landroid/support/constraint/a/e;->k:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/a/e;->m:[Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/e;->d:I

    iput v1, p0, Landroid/support/constraint/a/e;->e:I

    iget v0, p0, Landroid/support/constraint/a/e;->k:I

    iput v0, p0, Landroid/support/constraint/a/e;->n:I

    sget v0, Landroid/support/constraint/a/e;->h:I

    new-array v0, v0, [Landroid/support/constraint/a/h;

    iput-object v0, p0, Landroid/support/constraint/a/e;->o:[Landroid/support/constraint/a/h;

    iput v1, p0, Landroid/support/constraint/a/e;->p:I

    iget v0, p0, Landroid/support/constraint/a/e;->k:I

    new-array v0, v0, [Landroid/support/constraint/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/e;->q:[Landroid/support/constraint/a/b;

    iget v0, p0, Landroid/support/constraint/a/e;->k:I

    new-array v0, v0, [Landroid/support/constraint/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    invoke-direct {p0}, Landroid/support/constraint/a/e;->i()V

    new-instance v0, Landroid/support/constraint/a/c;

    invoke-direct {v0}, Landroid/support/constraint/a/c;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    new-instance v0, Landroid/support/constraint/a/d;

    iget-object v1, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    invoke-direct {v0, v1}, Landroid/support/constraint/a/d;-><init>(Landroid/support/constraint/a/c;)V

    iput-object v0, p0, Landroid/support/constraint/a/e;->j:Landroid/support/constraint/a/e$a;

    new-instance v0, Landroid/support/constraint/a/b;

    iget-object v1, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    invoke-direct {v0, v1}, Landroid/support/constraint/a/b;-><init>(Landroid/support/constraint/a/c;)V

    iput-object v0, p0, Landroid/support/constraint/a/e;->r:Landroid/support/constraint/a/e$a;

    return-void
.end method

.method private final a(Landroid/support/constraint/a/e$a;Z)I
    .locals 12

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->h:J

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/constraint/a/e;->d:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/support/constraint/a/e;->m:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-le v1, v0, :cond_b

    iget-object v0, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v0, v0, v1

    iget-object v2, v0, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/a/h;->b:I

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v8, v2, Landroid/support/constraint/a/f;->j:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/support/constraint/a/f;->j:J

    :cond_2
    invoke-virtual {v0, v6}, Landroid/support/constraint/a/b;->c(Landroid/support/constraint/a/h;)V

    iget-object v2, v0, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    iput v1, v2, Landroid/support/constraint/a/h;->b:I

    iget-object v1, v0, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/h;->c(Landroid/support/constraint/a/b;)V

    move v0, v4

    :goto_1
    move v1, v5

    move v4, v0

    :cond_3
    if-nez v4, :cond_d

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->i:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, v0, Landroid/support/constraint/a/f;->i:J

    :cond_4
    add-int/lit8 v5, v1, 0x1

    iget v0, p0, Landroid/support/constraint/a/e;->d:I

    mul-int/lit8 v0, v0, 0x2

    if-lt v5, v0, :cond_5

    move v0, v5

    :goto_2
    return v0

    :cond_5
    invoke-interface {p1}, Landroid/support/constraint/a/e$a;->g()Landroid/support/constraint/a/h;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/constraint/a/e;->m:[Z

    invoke-interface {p1}, Landroid/support/constraint/a/e$a;->g()Landroid/support/constraint/a/h;

    move-result-object v1

    iget v1, v1, Landroid/support/constraint/a/h;->a:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    :cond_6
    iget-object v0, p0, Landroid/support/constraint/a/e;->m:[Z

    invoke-interface {p1, p0, v0}, Landroid/support/constraint/a/e$a;->a(Landroid/support/constraint/a/e;[Z)Landroid/support/constraint/a/h;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v0, p0, Landroid/support/constraint/a/e;->m:[Z

    iget v1, v6, Landroid/support/constraint/a/h;->a:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    move v0, v5

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/constraint/a/e;->m:[Z

    iget v1, v6, Landroid/support/constraint/a/h;->a:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    :cond_8
    if-eqz v6, :cond_c

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_3
    iget v3, p0, Landroid/support/constraint/a/e;->e:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v3, v3, v0

    iget-object v7, v3, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    iget-object v7, v7, Landroid/support/constraint/a/h;->f:Landroid/support/constraint/a/h$a;

    sget-object v8, Landroid/support/constraint/a/h$a;->a:Landroid/support/constraint/a/h$a;

    if-ne v7, v8, :cond_a

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget-boolean v7, v3, Landroid/support/constraint/a/b;->e:Z

    if-nez v7, :cond_9

    invoke-virtual {v3, v6}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v3, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    invoke-virtual {v7, v6}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_9

    iget v3, v3, Landroid/support/constraint/a/b;->b:F

    neg-float v3, v3

    div-float/2addr v3, v7

    cmpg-float v7, v3, v2

    if-gez v7, :cond_9

    move v1, v0

    move v2, v3

    goto :goto_4

    :cond_b
    const/4 v0, 0x1

    goto :goto_1

    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_2
.end method

.method public static a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;FZ)Landroid/support/constraint/a/b;
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    if-eqz p5, :cond_0

    invoke-direct {p0, v0}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a()Landroid/support/constraint/a/f;
    .locals 1

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    return-object v0
.end method

.method private a(Landroid/support/constraint/a/h$a;Ljava/lang/String;)Landroid/support/constraint/a/h;
    .locals 4

    iget-object v0, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->b:Landroid/support/constraint/a/g$a;

    invoke-interface {v0}, Landroid/support/constraint/a/g$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/h;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/constraint/a/h;

    invoke-direct {v0, p1, p2}, Landroid/support/constraint/a/h;-><init>(Landroid/support/constraint/a/h$a;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/a/h;->a(Landroid/support/constraint/a/h$a;Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    iget v0, p0, Landroid/support/constraint/a/e;->p:I

    sget v2, Landroid/support/constraint/a/e;->h:I

    if-lt v0, v2, :cond_0

    sget v0, Landroid/support/constraint/a/e;->h:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Landroid/support/constraint/a/e;->h:I

    iget-object v0, p0, Landroid/support/constraint/a/e;->o:[Landroid/support/constraint/a/h;

    sget v2, Landroid/support/constraint/a/e;->h:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/h;

    iput-object v0, p0, Landroid/support/constraint/a/e;->o:[Landroid/support/constraint/a/h;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/e;->o:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/constraint/a/e;->p:I

    aput-object v1, v0, v2

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/support/constraint/a/h;->b()V

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/a/h;->a(Landroid/support/constraint/a/h$a;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0
.end method

.method private b(Landroid/support/constraint/a/e$a;)I
    .locals 18

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/e;->e:I

    if-ge v2, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    iget-object v5, v5, Landroid/support/constraint/a/h;->f:Landroid/support/constraint/a/h$a;

    sget-object v6, Landroid/support/constraint/a/h$a;->a:Landroid/support/constraint/a/h$a;

    if-ne v5, v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/support/constraint/a/b;->b:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_c

    const/4 v13, 0x0

    const/4 v3, 0x0

    :goto_2
    if-nez v13, :cond_c

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->k:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->k:J

    :cond_2
    add-int/lit8 v14, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/e;->e:I

    if-ge v2, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v15, v7, v2

    iget-object v7, v15, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    iget-object v7, v7, Landroid/support/constraint/a/h;->f:Landroid/support/constraint/a/h$a;

    sget-object v8, Landroid/support/constraint/a/h$a;->a:Landroid/support/constraint/a/h$a;

    if-ne v7, v8, :cond_4

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-boolean v7, v15, Landroid/support/constraint/a/b;->e:Z

    if-nez v7, :cond_3

    iget v7, v15, Landroid/support/constraint/a/b;->b:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    const/4 v7, 0x1

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/e;->d:I

    if-ge v7, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    aget-object v16, v3, v7

    iget-object v3, v15, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v17

    const/4 v3, 0x0

    cmpg-float v3, v17, v3

    if-gtz v3, :cond_5

    move v4, v8

    move v5, v9

    move v6, v10

    :goto_6
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v6

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    move v3, v8

    move v5, v9

    move v6, v10

    :goto_7
    const/4 v4, 0x7

    if-ge v12, v4, :cond_e

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/support/constraint/a/h;->e:[F

    aget v4, v4, v12

    div-float v8, v4, v17

    cmpg-float v4, v8, v11

    if-gez v4, :cond_6

    if-eq v12, v6, :cond_7

    :cond_6
    if-le v12, v6, :cond_d

    :cond_7
    move v3, v7

    move v4, v2

    move v6, v12

    :goto_8
    add-int/lit8 v12, v12, 0x1

    move v5, v4

    move v11, v8

    goto :goto_7

    :cond_8
    const/4 v2, -0x1

    if-eq v4, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v2, v2, v4

    iget-object v5, v2, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/constraint/a/h;->b:I

    sget-object v5, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v5, :cond_9

    sget-object v5, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v6, v5, Landroid/support/constraint/a/f;->j:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/support/constraint/a/f;->j:J

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v5, v5, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    aget-object v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/b;->c(Landroid/support/constraint/a/h;)V

    iget-object v3, v2, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    iput v4, v3, Landroid/support/constraint/a/h;->b:I

    iget-object v3, v2, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    invoke-virtual {v3, v2}, Landroid/support/constraint/a/h;->c(Landroid/support/constraint/a/b;)V

    move v2, v13

    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/e;->d:I

    div-int/lit8 v3, v3, 0x2

    if-le v14, v3, :cond_a

    const/4 v2, 0x1

    :cond_a
    move v13, v2

    move v3, v14

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    move v2, v3

    return v2

    :cond_d
    move v4, v5

    move v8, v11

    goto :goto_8

    :cond_e
    move v4, v3

    goto :goto_6

    :cond_f
    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    goto/16 :goto_4

    :cond_10
    move v2, v4

    goto/16 :goto_1
.end method

.method private b(Landroid/support/constraint/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/e;I)Landroid/support/constraint/a/b;

    return-void
.end method

.method private final c(Landroid/support/constraint/a/b;)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/e;->e:I

    if-lez v0, :cond_0

    iget-object v0, p1, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    iget-object v1, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/b;[Landroid/support/constraint/a/b;)V

    iget-object v0, p1, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    iget v0, v0, Landroid/support/constraint/a/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/constraint/a/b;->e:Z

    :cond_0
    return-void
.end method

.method private final d(Landroid/support/constraint/a/b;)V
    .locals 3

    iget-object v0, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    iget v1, p0, Landroid/support/constraint/a/e;->e:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->a:Landroid/support/constraint/a/g$a;

    iget-object v1, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    iget v2, p0, Landroid/support/constraint/a/e;->e:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/support/constraint/a/g$a;->a(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    iget v1, p0, Landroid/support/constraint/a/e;->e:I

    aput-object p1, v0, v1

    iget-object v0, p1, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    iget v1, p0, Landroid/support/constraint/a/e;->e:I

    iput v1, v0, Landroid/support/constraint/a/h;->b:I

    iget v0, p0, Landroid/support/constraint/a/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/e;->e:I

    iget-object v0, p1, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/h;->c(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method private h()V
    .locals 6

    iget v0, p0, Landroid/support/constraint/a/e;->k:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/constraint/a/e;->k:I

    iget-object v0, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    iget v1, p0, Landroid/support/constraint/a/e;->k:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    iget-object v1, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v0, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->k:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/h;

    iput-object v0, v1, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget v0, p0, Landroid/support/constraint/a/e;->k:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/a/e;->m:[Z

    iget v0, p0, Landroid/support/constraint/a/e;->k:I

    iput v0, p0, Landroid/support/constraint/a/e;->l:I

    iget v0, p0, Landroid/support/constraint/a/e;->k:I

    iput v0, p0, Landroid/support/constraint/a/e;->n:I

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->d:J

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->p:J

    iget v1, p0, Landroid/support/constraint/a/e;->k:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/constraint/a/f;->p:J

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->p:J

    iput-wide v2, v0, Landroid/support/constraint/a/f;->D:J

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/c;->a:Landroid/support/constraint/a/g$a;

    invoke-interface {v2, v1}, Landroid/support/constraint/a/g$a;->a(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/a/e;->e:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    iget v1, v1, Landroid/support/constraint/a/b;->b:F

    iput v1, v2, Landroid/support/constraint/a/h;->d:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Landroid/support/constraint/a/h;
    .locals 6

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->m:J

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/a/e;->l:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/support/constraint/a/e;->h()V

    :cond_1
    sget-object v0, Landroid/support/constraint/a/h$a;->d:Landroid/support/constraint/a/h$a;

    invoke-direct {p0, v0, p2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h$a;Ljava/lang/String;)Landroid/support/constraint/a/h;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->a:I

    iget v1, p0, Landroid/support/constraint/a/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->d:I

    iget v1, p0, Landroid/support/constraint/a/e;->a:I

    iput v1, v0, Landroid/support/constraint/a/h;->a:I

    iput p1, v0, Landroid/support/constraint/a/h;->c:I

    iget-object v1, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->a:I

    aput-object v0, v1, v2

    iget-object v1, p0, Landroid/support/constraint/a/e;->j:Landroid/support/constraint/a/e$a;

    invoke-interface {v1, v0}, Landroid/support/constraint/a/e$a;->d(Landroid/support/constraint/a/h;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Landroid/support/constraint/a/h;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Landroid/support/constraint/a/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/a/e;->l:I

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Landroid/support/constraint/a/e;->h()V

    :cond_2
    instance-of v1, p1, Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->b()Landroid/support/constraint/a/h;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/support/constraint/a/a/e;

    iget-object v1, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    check-cast p1, Landroid/support/constraint/a/a/e;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->b()Landroid/support/constraint/a/h;

    move-result-object v0

    :cond_3
    iget v1, v0, Landroid/support/constraint/a/h;->a:I

    if-eq v1, v3, :cond_4

    iget v1, v0, Landroid/support/constraint/a/h;->a:I

    iget v2, p0, Landroid/support/constraint/a/e;->a:I

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget v2, v0, Landroid/support/constraint/a/h;->a:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    :cond_4
    iget v1, v0, Landroid/support/constraint/a/h;->a:I

    if-eq v1, v3, :cond_5

    invoke-virtual {v0}, Landroid/support/constraint/a/h;->b()V

    :cond_5
    iget v1, p0, Landroid/support/constraint/a/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->a:I

    iget v1, p0, Landroid/support/constraint/a/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->d:I

    iget v1, p0, Landroid/support/constraint/a/e;->a:I

    iput v1, v0, Landroid/support/constraint/a/h;->a:I

    sget-object v1, Landroid/support/constraint/a/h$a;->a:Landroid/support/constraint/a/h$a;

    iput-object v1, v0, Landroid/support/constraint/a/h;->f:Landroid/support/constraint/a/h$a;

    iget-object v1, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->a:I

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/a/a/f;Landroid/support/constraint/a/a/f;FI)V
    .locals 16

    sget-object v2, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v8

    sget-object v2, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    sget-object v2, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v9

    sget-object v2, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v4

    sget-object v2, Landroid/support/constraint/a/a/e$c;->b:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v10

    sget-object v2, Landroid/support/constraint/a/a/e$c;->c:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v5

    sget-object v2, Landroid/support/constraint/a/a/e$c;->d:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v11

    sget-object v2, Landroid/support/constraint/a/a/e$c;->e:Landroid/support/constraint/a/a/e$c;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v2

    move/from16 v0, p3

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move/from16 v0, p4

    int-to-double v14, v0

    mul-double/2addr v12, v14

    double-to-float v7, v12

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v2

    move/from16 v0, p3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move/from16 v0, p4

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-float v7, v4

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/b;)V
    .locals 8

    const/4 v0, 0x1

    const-wide/16 v6, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->f:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Landroid/support/constraint/a/f;->f:J

    iget-boolean v1, p1, Landroid/support/constraint/a/b;->e:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->g:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Landroid/support/constraint/a/f;->g:J

    :cond_2
    iget v1, p0, Landroid/support/constraint/a/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/a/e;->n:I

    if-ge v1, v2, :cond_3

    iget v1, p0, Landroid/support/constraint/a/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/a/e;->l:I

    if-lt v1, v2, :cond_4

    :cond_3
    invoke-direct {p0}, Landroid/support/constraint/a/e;->h()V

    :cond_4
    const/4 v1, 0x0

    iget-boolean v2, p1, Landroid/support/constraint/a/b;->e:Z

    if-nez v2, :cond_a

    invoke-direct {p0, p1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/b;->e()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/support/constraint/a/b;->d()V

    invoke-virtual {p1, p0}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/e;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->e()Landroid/support/constraint/a/h;

    move-result-object v1

    iput-object v1, p1, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    invoke-direct {p0, p1}, Landroid/support/constraint/a/e;->d(Landroid/support/constraint/a/b;)V

    iget-object v2, p0, Landroid/support/constraint/a/e;->r:Landroid/support/constraint/a/e$a;

    invoke-interface {v2, p1}, Landroid/support/constraint/a/e$a;->a(Landroid/support/constraint/a/e$a;)V

    iget-object v2, p0, Landroid/support/constraint/a/e;->r:Landroid/support/constraint/a/e$a;

    invoke-direct {p0, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/e$a;Z)I

    iget v2, v1, Landroid/support/constraint/a/h;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    iget-object v2, p1, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    if-ne v2, v1, :cond_6

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/h;)Landroid/support/constraint/a/h;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_5

    sget-object v2, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->j:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->j:J

    :cond_5
    invoke-virtual {p1, v1}, Landroid/support/constraint/a/b;->c(Landroid/support/constraint/a/h;)V

    :cond_6
    iget-boolean v1, p1, Landroid/support/constraint/a/b;->e:Z

    if-nez v1, :cond_7

    iget-object v1, p1, Landroid/support/constraint/a/b;->a:Landroid/support/constraint/a/h;

    invoke-virtual {v1, p1}, Landroid/support/constraint/a/h;->c(Landroid/support/constraint/a/b;)V

    :cond_7
    iget v1, p0, Landroid/support/constraint/a/e;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/a/e;->e:I

    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/support/constraint/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/constraint/a/e;->d(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method a(Landroid/support/constraint/a/b;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroid/support/constraint/a/e;->a(ILjava/lang/String;)Landroid/support/constraint/a/h;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/support/constraint/a/b;->c(Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    return-void
.end method

.method a(Landroid/support/constraint/a/e$a;)V
    .locals 6

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->t:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->t:J

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->u:J

    iget v1, p0, Landroid/support/constraint/a/e;->d:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/constraint/a/f;->u:J

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    sget-object v1, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->v:J

    iget v1, p0, Landroid/support/constraint/a/e;->e:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/constraint/a/f;->v:J

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/a/b;

    invoke-direct {p0, v0}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    invoke-direct {p0, p1}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/e$a;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/e$a;Z)I

    invoke-direct {p0}, Landroid/support/constraint/a/e;->j()V

    return-void
.end method

.method public a(Landroid/support/constraint/a/h;I)V
    .locals 3

    iget v0, p1, Landroid/support/constraint/a/h;->b:I

    iget v1, p1, Landroid/support/constraint/a/h;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Landroid/support/constraint/a/b;->e:Z

    if-eqz v1, :cond_0

    int-to-float v1, p2

    iput v1, v0, Landroid/support/constraint/a/b;->b:F

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    iget v1, v1, Landroid/support/constraint/a/a;->a:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/constraint/a/b;->e:Z

    int-to-float v1, p2

    iput v1, v0, Landroid/support/constraint/a/b;->b:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V
    .locals 9

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    const/4 v2, 0x6

    move/from16 v0, p8

    if-eq v0, v2, :cond_0

    move/from16 v0, p8

    invoke-virtual {v1, p0, v0}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/e;I)Landroid/support/constraint/a/b;

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/h;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/a/h;->c:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    const/4 v2, 0x6

    if-eq p4, v2, :cond_0

    iget-object v2, v0, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v1}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1, p4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;FI)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;

    const/4 v1, 0x6

    if-eq p6, v1, :cond_0

    invoke-virtual {v0, p0, p6}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/e;I)Landroid/support/constraint/a/b;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/h;

    move-result-object v1

    iput v2, v1, Landroid/support/constraint/a/h;->c:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    if-eqz p3, :cond_0

    iget-object v2, v0, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v1}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroid/support/constraint/a/a/e;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->b()Landroid/support/constraint/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/support/constraint/a/h;->d:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/constraint/a/h;->b()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->b:Landroid/support/constraint/a/g$a;

    iget-object v2, p0, Landroid/support/constraint/a/e;->o:[Landroid/support/constraint/a/h;

    iget v3, p0, Landroid/support/constraint/a/e;->p:I

    invoke-interface {v0, v2, v3}, Landroid/support/constraint/a/g$a;->a([Ljava/lang/Object;I)V

    iput v1, p0, Landroid/support/constraint/a/e;->p:I

    iget-object v0, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/constraint/a/e;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/e;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    iput v1, p0, Landroid/support/constraint/a/e;->a:I

    iget-object v0, p0, Landroid/support/constraint/a/e;->j:Landroid/support/constraint/a/e$a;

    invoke-interface {v0}, Landroid/support/constraint/a/e$a;->f()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/e;->d:I

    move v0, v1

    :goto_1
    iget v2, p0, Landroid/support/constraint/a/e;->e:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Landroid/support/constraint/a/b;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/constraint/a/e;->i()V

    iput v1, p0, Landroid/support/constraint/a/e;->e:I

    return-void
.end method

.method public b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/h;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/a/h;->c:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    const/4 v2, 0x6

    if-eq p4, v2, :cond_0

    iget-object v2, v0, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v1}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1, p4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method public b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/h;

    move-result-object v1

    iput v2, v1, Landroid/support/constraint/a/h;->c:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    if-eqz p3, :cond_0

    iget-object v2, v0, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v1}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method public c()Landroid/support/constraint/a/b;
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->a:Landroid/support/constraint/a/g$a;

    invoke-interface {v0}, Landroid/support/constraint/a/g$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/b;

    iget-object v1, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    invoke-direct {v0, v1}, Landroid/support/constraint/a/b;-><init>(Landroid/support/constraint/a/c;)V

    :goto_0
    invoke-static {}, Landroid/support/constraint/a/h;->a()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/a/b;->c()V

    goto :goto_0
.end method

.method public c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    const/4 v1, 0x6

    if-eq p4, v1, :cond_0

    invoke-virtual {v0, p0, p4}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/e;I)Landroid/support/constraint/a/b;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    return-object v0
.end method

.method public d()Landroid/support/constraint/a/h;
    .locals 6

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->n:J

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/a/e;->l:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/support/constraint/a/e;->h()V

    :cond_1
    sget-object v0, Landroid/support/constraint/a/h$a;->c:Landroid/support/constraint/a/h$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h$a;Ljava/lang/String;)Landroid/support/constraint/a/h;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->a:I

    iget v1, p0, Landroid/support/constraint/a/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->d:I

    iget v1, p0, Landroid/support/constraint/a/e;->a:I

    iput v1, v0, Landroid/support/constraint/a/h;->a:I

    iget-object v1, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->a:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public e()Landroid/support/constraint/a/h;
    .locals 6

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->o:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->o:J

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/a/e;->l:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/support/constraint/a/e;->h()V

    :cond_1
    sget-object v0, Landroid/support/constraint/a/h$a;->c:Landroid/support/constraint/a/h$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h$a;Ljava/lang/String;)Landroid/support/constraint/a/h;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->a:I

    iget v1, p0, Landroid/support/constraint/a/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->d:I

    iget v1, p0, Landroid/support/constraint/a/e;->a:I

    iput v1, v0, Landroid/support/constraint/a/h;->a:I

    iget-object v1, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->a:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public f()V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v4, 0x1

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->e:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->e:J

    :cond_0
    iget-boolean v0, p0, Landroid/support/constraint/a/e;->c:Z

    if-eqz v0, :cond_5

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->r:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->r:J

    :cond_1
    const/4 v2, 0x1

    move v0, v1

    :goto_0
    iget v3, p0, Landroid/support/constraint/a/e;->e:I

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Landroid/support/constraint/a/e;->b:[Landroid/support/constraint/a/b;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/support/constraint/a/b;->e:Z

    if-nez v3, :cond_2

    :goto_1
    if-nez v1, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/e;->j:Landroid/support/constraint/a/e$a;

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/e$a;)V

    :goto_2
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/support/constraint/a/e;->g:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->q:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->q:J

    :cond_4
    invoke-direct {p0}, Landroid/support/constraint/a/e;->j()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroid/support/constraint/a/e;->j:Landroid/support/constraint/a/e$a;

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/e$a;)V

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public g()Landroid/support/constraint/a/c;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/e;->f:Landroid/support/constraint/a/c;

    return-object v0
.end method
