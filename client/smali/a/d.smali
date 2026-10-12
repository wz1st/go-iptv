.class public final La/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d$a;
    }
.end annotation


# static fields
.field public static final a:La/d;

.field public static final b:La/d;


# instance fields
.field c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La/d$a;

    invoke-direct {v0}, La/d$a;-><init>()V

    invoke-virtual {v0}, La/d$a;->b()La/d$a;

    move-result-object v0

    invoke-virtual {v0}, La/d$a;->a()La/d;

    move-result-object v0

    sput-object v0, La/d;->b:La/d;

    new-instance v0, La/d$a;

    invoke-direct {v0}, La/d$a;-><init>()V

    invoke-virtual {v0}, La/d$a;->c()La/d$a;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, La/d$a;->a(ILjava/util/concurrent/TimeUnit;)La/d$a;

    move-result-object v0

    invoke-virtual {v0}, La/d$a;->a()La/d;

    move-result-object v0

    sput-object v0, La/d;->a:La/d;

    return-void
.end method

.method private constructor <init>(La/d$a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, La/d$a;->a:Z

    iput-boolean v0, p0, La/d;->d:Z

    iget-boolean v0, p1, La/d$a;->b:Z

    iput-boolean v0, p0, La/d;->e:Z

    iget v0, p1, La/d$a;->c:I

    iput v0, p0, La/d;->f:I

    const/4 v0, -0x1

    iput v0, p0, La/d;->g:I

    iput-boolean v1, p0, La/d;->h:Z

    iput-boolean v1, p0, La/d;->i:Z

    iput-boolean v1, p0, La/d;->j:Z

    iget v0, p1, La/d$a;->d:I

    iput v0, p0, La/d;->k:I

    iget v0, p1, La/d$a;->e:I

    iput v0, p0, La/d;->l:I

    iget-boolean v0, p1, La/d$a;->f:Z

    iput-boolean v0, p0, La/d;->m:Z

    iget-boolean v0, p1, La/d$a;->g:Z

    iput-boolean v0, p0, La/d;->n:Z

    return-void
.end method

.method synthetic constructor <init>(La/d$a;B)V
    .locals 0

    invoke-direct {p0, p1}, La/d;-><init>(La/d$a;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La/d;->d:Z

    iput-boolean p2, p0, La/d;->e:Z

    iput p3, p0, La/d;->f:I

    iput p4, p0, La/d;->g:I

    iput-boolean p5, p0, La/d;->h:Z

    iput-boolean p6, p0, La/d;->i:Z

    iput-boolean p7, p0, La/d;->j:Z

    iput p8, p0, La/d;->k:I

    iput p9, p0, La/d;->l:I

    iput-boolean p10, p0, La/d;->m:Z

    iput-boolean p11, p0, La/d;->n:Z

    iput-object p12, p0, La/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(La/q;)La/d;
    .locals 22

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, La/q;->b()I

    move-result v20

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v19, v14

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, La/q;->a(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, La/q;->b(I)Ljava/lang/String;

    move-result-object v14

    const-string v17, "Cache-Control"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    if-eqz v2, :cond_1

    const/4 v15, 0x0

    :goto_1
    const/16 v16, 0x0

    move/from16 v17, v5

    move/from16 v18, v6

    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_10

    const-string v5, "=,;"

    move/from16 v0, v16

    invoke-static {v14, v0, v5}, La/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    move/from16 v0, v16

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_0

    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v21, 0x2c

    move/from16 v0, v21

    if-eq v6, v0, :cond_0

    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v21, 0x3b

    move/from16 v0, v21

    if-ne v6, v0, :cond_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    :goto_3
    const-string v21, "no-cache"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/4 v3, 0x1

    move/from16 v16, v5

    goto :goto_2

    :cond_1
    move-object v2, v14

    goto :goto_1

    :cond_2
    const-string v17, "Pragma"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    invoke-static {v14, v5}, La/a/d/f;->b(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_4

    invoke-virtual {v14, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v21, 0x22

    move/from16 v0, v21

    if-ne v5, v0, :cond_4

    add-int/lit8 v5, v6, 0x1

    const-string v6, "\""

    invoke-static {v14, v5, v6}, La/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v21, 0x1

    goto :goto_3

    :cond_4
    const-string v5, ",;"

    invoke-static {v14, v6, v5}, La/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v14, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    const-string v21, "no-store"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    const/4 v4, 0x1

    move/from16 v16, v5

    goto/16 :goto_2

    :cond_6
    const-string v21, "max-age"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-static {v6, v0}, La/a/d/f;->a(Ljava/lang/String;I)I

    move-result v6

    move/from16 v16, v5

    move/from16 v17, v6

    goto/16 :goto_2

    :cond_7
    const-string v21, "s-maxage"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-static {v6, v0}, La/a/d/f;->a(Ljava/lang/String;I)I

    move-result v6

    move/from16 v16, v5

    move/from16 v18, v6

    goto/16 :goto_2

    :cond_8
    const-string v21, "private"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    const/4 v7, 0x1

    move/from16 v16, v5

    goto/16 :goto_2

    :cond_9
    const-string v21, "public"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/4 v8, 0x1

    move/from16 v16, v5

    goto/16 :goto_2

    :cond_a
    const-string v21, "must-revalidate"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/4 v9, 0x1

    move/from16 v16, v5

    goto/16 :goto_2

    :cond_b
    const-string v21, "max-stale"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    const v10, 0x7fffffff

    invoke-static {v6, v10}, La/a/d/f;->a(Ljava/lang/String;I)I

    move-result v10

    move/from16 v16, v5

    goto/16 :goto_2

    :cond_c
    const-string v21, "min-fresh"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/4 v11, -0x1

    invoke-static {v6, v11}, La/a/d/f;->a(Ljava/lang/String;I)I

    move-result v11

    move/from16 v16, v5

    goto/16 :goto_2

    :cond_d
    const-string v6, "only-if-cached"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v12, 0x1

    move/from16 v16, v5

    goto/16 :goto_2

    :cond_e
    const-string v6, "no-transform"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v13, 0x1

    move/from16 v16, v5

    goto/16 :goto_2

    :cond_f
    move/from16 v17, v5

    move/from16 v18, v6

    :cond_10
    add-int/lit8 v14, v19, 0x1

    move/from16 v19, v14

    move/from16 v5, v17

    move/from16 v6, v18

    goto/16 :goto_0

    :cond_11
    if-nez v15, :cond_12

    const/4 v14, 0x0

    :goto_4
    new-instance v2, La/d;

    invoke-direct/range {v2 .. v14}, La/d;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v2

    :cond_12
    move-object v14, v2

    goto :goto_4

    :cond_13
    move/from16 v16, v5

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, La/d;->h:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, La/d;->i:Z

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, La/d;->f:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, La/d;->k:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, La/d;->l:I

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, La/d;->j:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, La/d;->d:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, La/d;->e:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, La/d;->m:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, La/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, La/d;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, La/d;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, La/d;->f:I

    if-eq v1, v3, :cond_3

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, La/d;->g:I

    if-eq v1, v3, :cond_4

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, La/d;->h:Z

    if-eqz v1, :cond_5

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, La/d;->i:Z

    if-eqz v1, :cond_6

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v1, p0, La/d;->j:Z

    if-eqz v1, :cond_7

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, La/d;->k:I

    if-eq v1, v3, :cond_8

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, La/d;->l:I

    if-eq v1, v3, :cond_9

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v1, p0, La/d;->m:Z

    if-eqz v1, :cond_a

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v1, p0, La/d;->n:Z

    if-eqz v1, :cond_b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, ""

    :goto_1
    iput-object v0, p0, La/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
