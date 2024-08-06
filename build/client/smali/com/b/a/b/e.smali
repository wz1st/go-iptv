.class public Lcom/b/a/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/b/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[I

.field private final c:[I

.field private final d:Lcom/b/a/b/a$a;

.field private e:Ljava/nio/ByteBuffer;

.field private f:[B

.field private g:[S

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[I

.field private l:I

.field private m:Lcom/b/a/b/c;

.field private n:Landroid/graphics/Bitmap;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/lang/Boolean;

.field private u:Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/b/a/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/b/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/b/a/b/e;->c:[I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/b/a/b/e;->u:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    new-instance v0, Lcom/b/a/b/c;

    invoke-direct {v0}, Lcom/b/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/b/a$a;Lcom/b/a/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/b/e;-><init>(Lcom/b/a/b/a$a;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private a(III)I
    .locals 9

    const/4 v2, 0x0

    move v0, p1

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_0
    iget v7, p0, Lcom/b/a/b/e;->q:I

    add-int/2addr v7, p1

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcom/b/a/b/e;->j:[B

    array-length v7, v7

    if-ge v0, v7, :cond_1

    if-ge v0, p2, :cond_1

    iget-object v7, p0, Lcom/b/a/b/e;->j:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/b/a/b/e;->b:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, p1, p3

    :goto_1
    add-int v7, p1, p3

    iget v8, p0, Lcom/b/a/b/e;->q:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/b/a/b/e;->j:[B

    array-length v7, v7

    if-ge v0, v7, :cond_3

    if-ge v0, p2, :cond_3

    iget-object v7, p0, Lcom/b/a/b/e;->j:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/b/a/b/e;->b:[I

    aget v7, v8, v7

    if-eqz v7, :cond_2

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    :goto_2
    return v2

    :cond_4
    div-int v0, v6, v1

    shl-int/lit8 v0, v0, 0x18

    div-int v2, v5, v1

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    div-int v2, v4, v1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    div-int v1, v3, v1

    or-int v2, v0, v1

    goto :goto_2
.end method

.method private a(Lcom/b/a/b/b;Lcom/b/a/b/b;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v4, 0x3

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/b/a/b/e;->k:[I

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    iget-object v3, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    invoke-interface {v0, v3}, Lcom/b/a/b/a$a;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    if-eqz p2, :cond_2

    iget v0, p2, Lcom/b/a/b/b;->g:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    if-eqz p2, :cond_8

    iget v0, p2, Lcom/b/a/b/b;->g:I

    if-lez v0, :cond_8

    iget v0, p2, Lcom/b/a/b/b;->g:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    iget-boolean v0, p1, Lcom/b/a/b/b;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget v0, v0, Lcom/b/a/b/c;->l:I

    iget-object v3, p1, Lcom/b/a/b/b;->k:[I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget v3, v3, Lcom/b/a/b/c;->j:I

    iget v4, p1, Lcom/b/a/b/b;->h:I

    if-ne v3, v4, :cond_3

    move v0, v2

    :cond_3
    :goto_0
    iget v3, p2, Lcom/b/a/b/b;->d:I

    iget v4, p0, Lcom/b/a/b/e;->q:I

    div-int/2addr v3, v4

    iget v4, p2, Lcom/b/a/b/b;->b:I

    iget v5, p0, Lcom/b/a/b/e;->q:I

    div-int/2addr v4, v5

    iget v5, p2, Lcom/b/a/b/b;->c:I

    iget v6, p0, Lcom/b/a/b/e;->q:I

    div-int/2addr v5, v6

    iget v6, p2, Lcom/b/a/b/b;->a:I

    iget v7, p0, Lcom/b/a/b/e;->q:I

    div-int/2addr v6, v7

    iget v7, p0, Lcom/b/a/b/e;->s:I

    mul-int/2addr v4, v7

    add-int/2addr v4, v6

    iget v6, p0, Lcom/b/a/b/e;->s:I

    mul-int/2addr v3, v6

    add-int v6, v4, v3

    :goto_1
    if-ge v4, v6, :cond_8

    add-int v7, v4, v5

    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_6

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/b/a/b/e;->l:I

    if-nez v0, :cond_5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->t:Ljava/lang/Boolean;

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/b/a/b/e;->s:I

    add-int/2addr v4, v3

    goto :goto_1

    :cond_7
    iget v0, p2, Lcom/b/a/b/b;->g:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/b/a/b/e;->s:I

    iget v6, p0, Lcom/b/a/b/e;->s:I

    iget v7, p0, Lcom/b/a/b/e;->r:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/b/a/b/e;->c(Lcom/b/a/b/b;)V

    iget-boolean v0, p1, Lcom/b/a/b/b;->e:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/b/a/b/e;->q:I

    if-eq v0, v8, :cond_d

    :cond_9
    invoke-direct {p0, p1}, Lcom/b/a/b/e;->b(Lcom/b/a/b/b;)V

    :goto_3
    iget-boolean v0, p0, Lcom/b/a/b/e;->o:Z

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/b/a/b/b;->g:I

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/b/a/b/b;->g:I

    if-ne v0, v8, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/b/a/b/e;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    :cond_b
    iget-object v0, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/b/a/b/e;->s:I

    iget v6, p0, Lcom/b/a/b/e;->s:I

    iget v7, p0, Lcom/b/a/b/e;->r:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_c
    invoke-direct {p0}, Lcom/b/a/b/e;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, p0, Lcom/b/a/b/e;->s:I

    iget v6, p0, Lcom/b/a/b/e;->s:I

    iget v7, p0, Lcom/b/a/b/e;->r:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/b;)V

    goto :goto_3
.end method

.method private a(Lcom/b/a/b/b;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/b/a/b/e;->k:[I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/b/a/b/b;->d:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/b/a/b/b;->b:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/b/a/b/b;->c:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/b/a/b/b;->a:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/b/a/b/e;->l:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/b/a/b/e;->s:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/b/a/b/e;->j:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/b/a/b/e;->b:[I

    const/4 v3, -0x1

    const/4 v2, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v9, :cond_5

    add-int v2, v7, v10

    mul-int v4, v2, v13

    add-int v6, v4, v12

    add-int v2, v6, v11

    add-int v5, v4, v13

    if-ge v5, v2, :cond_0

    add-int v2, v4, v13

    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/b/a/b/b;->c:I

    mul-int/2addr v4, v7

    move v5, v4

    :goto_2
    if-ge v6, v2, :cond_4

    aget-byte v4, v14, v5

    and-int/lit16 v0, v4, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    aget v16, v15, v16

    if-eqz v16, :cond_3

    aput v16, v8, v6

    :cond_1
    :goto_3
    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    move v5, v4

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/b/e;->t:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    if-eq v3, v1, :cond_6

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/b/a/b/e;->t:Ljava/lang/Boolean;

    return-void

    :cond_6
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private b(Lcom/b/a/b/b;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/b/a/b/e;->k:[I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/b/a/b/b;->d:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/b/a/b/e;->q:I

    div-int v13, v2, v3

    move-object/from16 v0, p1

    iget v2, v0, Lcom/b/a/b/b;->b:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/b/a/b/e;->q:I

    div-int v14, v2, v3

    move-object/from16 v0, p1

    iget v2, v0, Lcom/b/a/b/b;->c:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/b/a/b/e;->q:I

    div-int v15, v2, v3

    move-object/from16 v0, p1

    iget v2, v0, Lcom/b/a/b/b;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/b/a/b/e;->q:I

    div-int v16, v2, v3

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/b/a/b/e;->l:I

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/b/a/b/e;->q:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/b/a/b/e;->s:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/b/a/b/e;->r:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/b/e;->j:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/b/e;->b:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/b/a/b/e;->t:Ljava/lang/Boolean;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v13, :cond_b

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/b/a/b/b;->e:Z

    if-eqz v7, :cond_f

    if-lt v3, v13, :cond_0

    add-int/lit8 v5, v5, 0x1

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_2
    add-int v9, v3, v4

    move v7, v3

    move v10, v4

    move v11, v5

    :goto_3
    add-int v5, v7, v14

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    const/4 v3, 0x1

    move v4, v3

    :goto_4
    move/from16 v0, v19

    if-ge v5, v0, :cond_7

    mul-int v5, v5, v18

    add-int v7, v5, v16

    add-int v3, v7, v15

    add-int v22, v5, v18

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    add-int v3, v5, v18

    :cond_1
    mul-int v5, v8, v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/b/a/b/b;->c:I

    move/from16 v22, v0

    mul-int v5, v5, v22

    if-eqz v4, :cond_8

    move-object v4, v6

    :goto_5
    if-ge v7, v3, :cond_6

    aget-byte v6, v20, v5

    and-int/lit16 v6, v6, 0xff

    aget v6, v21, v6

    if-eqz v6, :cond_5

    aput v6, v12, v7

    :cond_2
    :goto_6
    add-int v5, v5, v17

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x4

    goto :goto_2

    :pswitch_1
    const/4 v3, 0x2

    const/4 v4, 0x4

    goto :goto_2

    :pswitch_2
    const/4 v3, 0x1

    const/4 v4, 0x2

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_6

    :cond_6
    move-object v6, v4

    :cond_7
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move v3, v9

    move v4, v10

    move v5, v11

    goto :goto_1

    :cond_8
    sub-int v4, v3, v7

    mul-int v4, v4, v17

    add-int v22, v5, v4

    move-object v4, v6

    :goto_8
    if-ge v7, v3, :cond_e

    move-object/from16 v0, p1

    iget v6, v0, Lcom/b/a/b/b;->c:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v1, v6}, Lcom/b/a/b/e;->a(III)I

    move-result v6

    if-eqz v6, :cond_a

    aput v6, v12, v7

    :cond_9
    :goto_9
    add-int v5, v5, v17

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_8

    :cond_a
    if-eqz v2, :cond_9

    if-nez v4, :cond_9

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_9

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/b/e;->t:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    if-nez v6, :cond_d

    const/4 v2, 0x0

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/b/e;->t:Ljava/lang/Boolean;

    :cond_c
    return-void

    :cond_d
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_a

    :cond_e
    move-object v6, v4

    goto :goto_7

    :cond_f
    move v7, v8

    move v9, v3

    move v10, v4

    move v11, v5

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Lcom/b/a/b/b;)V
    .locals 26

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/b/a/b/e;->e:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/b/a/b/b;->j:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget v1, v1, Lcom/b/a/b/c;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget v2, v2, Lcom/b/a/b/c;->g:I

    mul-int/2addr v1, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/b/e;->j:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/b/e;->j:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    invoke-interface {v2, v1}, Lcom/b/a/b/a$a;->a(I)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/b/e;->j:[B

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/b/e;->j:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/b/e;->g:[S

    if-nez v2, :cond_3

    const/16 v2, 0x1000

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/b/e;->g:[S

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/b/e;->g:[S

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/b/e;->h:[B

    if-nez v2, :cond_4

    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/b/e;->h:[B

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/b/e;->h:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/b/e;->i:[B

    if-nez v2, :cond_5

    const/16 v2, 0x1001

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/b/e;->i:[B

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/b/e;->i:[B

    move-object/from16 v21, v0

    invoke-direct/range {p0 .. p0}, Lcom/b/a/b/e;->j()I

    move-result v22

    const/4 v2, 0x1

    shl-int v23, v2, v22

    add-int/lit8 v24, v23, 0x1

    add-int/lit8 v6, v23, 0x2

    const/4 v10, -0x1

    add-int/lit8 v4, v22, 0x1

    const/4 v2, 0x1

    shl-int/2addr v2, v4

    add-int/lit8 v5, v2, -0x1

    const/4 v2, 0x0

    :goto_1
    move/from16 v0, v23

    if-ge v2, v0, :cond_7

    const/4 v3, 0x0

    aput-short v3, v19, v2

    int-to-byte v3, v2

    aput-byte v3, v20, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Lcom/b/a/b/b;->c:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/b/a/b/b;->d:I

    mul-int/2addr v1, v2

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/b/e;->f:[B

    move-object/from16 v25, v0

    const/4 v9, 0x0

    move v7, v9

    move v2, v9

    move v8, v9

    move v11, v9

    move v13, v9

    move v14, v9

    move v3, v9

    move v15, v9

    :goto_2
    if-ge v14, v1, :cond_8

    if-nez v3, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/b/a/b/e;->k()I

    move-result v3

    if-gtz v3, :cond_9

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/b/a/b/e;->p:I

    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_9
    const/4 v2, 0x0

    :cond_a
    aget-byte v9, v25, v2

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v15

    add-int/2addr v9, v13

    add-int/lit8 v15, v15, 0x8

    add-int/lit8 v16, v2, 0x1

    add-int/lit8 v17, v3, -0x1

    move v12, v11

    move v13, v9

    :goto_3
    if-lt v15, v4, :cond_12

    and-int v11, v13, v5

    shr-int/2addr v13, v4

    sub-int/2addr v15, v4

    move/from16 v0, v23

    if-ne v11, v0, :cond_b

    add-int/lit8 v4, v22, 0x1

    const/4 v2, 0x1

    shl-int/2addr v2, v4

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v23, 0x2

    const/4 v11, -0x1

    move v10, v11

    goto :goto_3

    :cond_b
    move/from16 v0, v24

    if-ne v11, v0, :cond_c

    move/from16 v2, v16

    move v11, v12

    move/from16 v3, v17

    goto :goto_2

    :cond_c
    const/4 v2, -0x1

    if-ne v10, v2, :cond_d

    aget-byte v2, v20, v11

    aput-byte v2, v18, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v14, 0x1

    move v12, v11

    move v14, v9

    move v10, v11

    goto :goto_3

    :cond_d
    if-lt v11, v6, :cond_11

    int-to-byte v2, v12

    aput-byte v2, v21, v8

    add-int/lit8 v3, v8, 0x1

    move v2, v10

    :goto_4
    move/from16 v0, v23

    if-lt v2, v0, :cond_e

    aget-byte v8, v20, v2

    aput-byte v8, v21, v3

    add-int/lit8 v3, v3, 0x1

    aget-short v2, v19, v2

    goto :goto_4

    :cond_e
    aget-byte v2, v20, v2

    and-int/lit16 v12, v2, 0xff

    int-to-byte v2, v12

    aput-byte v2, v18, v7

    add-int/lit8 v2, v7, 0x1

    add-int/lit8 v9, v14, 0x1

    move v7, v2

    move v8, v3

    :goto_5
    if-lez v8, :cond_f

    add-int/lit8 v3, v8, -0x1

    aget-byte v2, v21, v3

    aput-byte v2, v18, v7

    add-int/lit8 v2, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v2

    move v8, v3

    goto :goto_5

    :cond_f
    const/16 v2, 0x1000

    if-ge v6, v2, :cond_10

    int-to-short v2, v10

    aput-short v2, v19, v6

    int-to-byte v2, v12

    aput-byte v2, v20, v6

    add-int/lit8 v6, v6, 0x1

    and-int v2, v6, v5

    if-nez v2, :cond_10

    const/16 v2, 0x1000

    if-ge v6, v2, :cond_10

    add-int/lit8 v2, v4, 0x1

    add-int v3, v5, v6

    :goto_6
    move v14, v9

    move v10, v11

    move v4, v2

    move v5, v3

    goto :goto_3

    :cond_10
    move v2, v4

    move v3, v5

    goto :goto_6

    :cond_11
    move v3, v8

    move v2, v11

    goto :goto_4

    :cond_12
    move/from16 v2, v16

    move v11, v12

    move/from16 v3, v17

    goto/16 :goto_2
.end method

.method private j()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private k()I
    .locals 5

    invoke-direct {p0}, Lcom/b/a/b/e;->j()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/b/a/b/e;->e:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/b/a/b/e;->f:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private l()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/b/a/b/e;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/e;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v1, p0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    iget v2, p0, Lcom/b/a/b/e;->s:I

    iget v3, p0, Lcom/b/a/b/e;->r:I

    invoke-interface {v1, v2, v3, v0}, Lcom/b/a/b/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/b/a/b/e;->u:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget v1, v1, Lcom/b/a/b/c;->c:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/b;

    iget v0, v0, Lcom/b/a/b/b;->i:I

    :cond_0
    return v0
.end method

.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/e;->e:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)V
    .locals 3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/b/a/b/e;->u:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public declared-synchronized a(Lcom/b/a/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 4

    monitor-enter p0

    if-gtz p3, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sample size must be >=0, not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/b/e;->p:I

    iput-object p1, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/b/e;->l:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->e:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/b/a/b/e;->e:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/b/a/b/e;->e:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/b/e;->o:Z

    iget-object v0, p1, Lcom/b/a/b/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/b;

    iget v0, v0, Lcom/b/a/b/b;->g:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/b/e;->o:Z

    :cond_2
    iput v1, p0, Lcom/b/a/b/e;->q:I

    iget v0, p1, Lcom/b/a/b/c;->f:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/b/e;->s:I

    iget v0, p1, Lcom/b/a/b/c;->g:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/b/e;->r:I

    iget-object v0, p0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    iget v1, p1, Lcom/b/a/b/c;->f:I

    iget v2, p1, Lcom/b/a/b/c;->g:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/b/a/b/a$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->j:[B

    iget-object v0, p0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    iget v1, p0, Lcom/b/a/b/e;->s:I

    iget v2, p0, Lcom/b/a/b/e;->r:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/b/a/b/a$a;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->k:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lcom/b/a/b/e;->l:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget v1, v1, Lcom/b/a/b/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/b/e;->l:I

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget v0, v0, Lcom/b/a/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/b/a/b/e;->l:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/b/a/b/e;->l:I

    invoke-virtual {p0, v0}, Lcom/b/a/b/e;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget v0, v0, Lcom/b/a/b/c;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/b/a/b/e;->l:I

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/b/e;->l:I

    return-void
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/b/a/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/b/e;->j:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/b/a/b/e;->k:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized h()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget v0, v0, Lcom/b/a/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/b/a/b/e;->l:I

    if-gez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/b/a/b/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/b/a/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, frameCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget v3, v3, Lcom/b/a/b/c;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", framePointer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/b/a/b/e;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/b/a/b/e;->p:I

    :cond_2
    iget v0, p0, Lcom/b/a/b/e;->p:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/b/a/b/e;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_3
    sget-object v0, Lcom/b/a/b/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/b/a/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/b/a/b/e;->p:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v2

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/b/a/b/e;->p:I

    iget-object v0, p0, Lcom/b/a/b/e;->f:[B

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Lcom/b/a/b/a$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->f:[B

    :cond_6
    iget-object v0, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget-object v0, v0, Lcom/b/a/b/c;->e:Ljava/util/List;

    iget v1, p0, Lcom/b/a/b/e;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/b;

    iget v1, p0, Lcom/b/a/b/e;->l:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_b

    iget-object v3, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget-object v3, v3, Lcom/b/a/b/c;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/b/b;

    move-object v3, v1

    :goto_1
    iget-object v1, v0, Lcom/b/a/b/b;->k:[I

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/b/a/b/b;->k:[I

    :goto_2
    iput-object v1, p0, Lcom/b/a/b/e;->b:[I

    iget-object v1, p0, Lcom/b/a/b/e;->b:[I

    if-nez v1, :cond_9

    sget-object v0, Lcom/b/a/b/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/b/a/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid color table found for frame #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/b/a/b/e;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Lcom/b/a/b/e;->p:I

    move-object v0, v2

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget-object v1, v1, Lcom/b/a/b/c;->a:[I

    goto :goto_2

    :cond_9
    iget-boolean v1, v0, Lcom/b/a/b/b;->f:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/b/a/b/e;->b:[I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/b/a/b/e;->c:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/b/a/b/e;->b:[I

    array-length v6, v6

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/b/a/b/e;->c:[I

    iput-object v1, p0, Lcom/b/a/b/e;->b:[I

    iget-object v1, p0, Lcom/b/a/b/e;->b:[I

    iget v2, v0, Lcom/b/a/b/b;->h:I

    const/4 v4, 0x0

    aput v4, v1, v2

    :cond_a
    invoke-direct {p0, v0, v3}, Lcom/b/a/b/e;->a(Lcom/b/a/b/b;Lcom/b/a/b/b;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    move-object v3, v2

    goto :goto_1
.end method

.method public i()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/b/a/b/e;->m:Lcom/b/a/b/c;

    iget-object v0, p0, Lcom/b/a/b/e;->j:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    iget-object v1, p0, Lcom/b/a/b/e;->j:[B

    invoke-interface {v0, v1}, Lcom/b/a/b/a$a;->a([B)V

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/e;->k:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    iget-object v1, p0, Lcom/b/a/b/e;->k:[I

    invoke-interface {v0, v1}, Lcom/b/a/b/a$a;->a([I)V

    :cond_1
    iget-object v0, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    iget-object v1, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/b/a/b/a$a;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    iput-object v2, p0, Lcom/b/a/b/e;->n:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/b/a/b/e;->e:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/b/a/b/e;->t:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/b/a/b/e;->f:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/a/b/e;->d:Lcom/b/a/b/a$a;

    iget-object v1, p0, Lcom/b/a/b/e;->f:[B

    invoke-interface {v0, v1}, Lcom/b/a/b/a$a;->a([B)V

    :cond_3
    return-void
.end method
