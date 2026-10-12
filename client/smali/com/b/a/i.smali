.class public Lcom/b/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/b/a/g/e;


# instance fields
.field protected b:Lcom/b/a/g/e;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/b/a/j;

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/b/a/g/e;

.field private final g:Lcom/b/a/c;

.field private final h:Lcom/b/a/e;

.field private i:Lcom/b/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/k",
            "<*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/g/d",
            "<TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private l:Lcom/b/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private m:Lcom/b/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/b/a/g/e;

    invoke-direct {v0}, Lcom/b/a/g/e;-><init>()V

    sget-object v1, Lcom/b/a/c/b/i;->c:Lcom/b/a/c/b/i;

    invoke-virtual {v0, v1}, Lcom/b/a/g/e;->b(Lcom/b/a/c/b/i;)Lcom/b/a/g/e;

    move-result-object v0

    sget-object v1, Lcom/b/a/g;->d:Lcom/b/a/g;

    invoke-virtual {v0, v1}, Lcom/b/a/g/e;->a(Lcom/b/a/g;)Lcom/b/a/g/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/a/g/e;->b(Z)Lcom/b/a/g/e;

    move-result-object v0

    sput-object v0, Lcom/b/a/i;->a:Lcom/b/a/g/e;

    return-void
.end method

.method protected constructor <init>(Lcom/b/a/c;Lcom/b/a/j;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c;",
            "Lcom/b/a/j;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/i;->o:Z

    iput-object p1, p0, Lcom/b/a/i;->g:Lcom/b/a/c;

    iput-object p2, p0, Lcom/b/a/i;->d:Lcom/b/a/j;

    iput-object p3, p0, Lcom/b/a/i;->e:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/b/a/j;->h()Lcom/b/a/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/i;->f:Lcom/b/a/g/e;

    iput-object p4, p0, Lcom/b/a/i;->c:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/b/a/j;->b(Ljava/lang/Class;)Lcom/b/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/i;->i:Lcom/b/a/k;

    iget-object v0, p0, Lcom/b/a/i;->f:Lcom/b/a/g/e;

    iput-object v0, p0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {p1}, Lcom/b/a/c;->e()Lcom/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/i;->h:Lcom/b/a/e;

    return-void
.end method

.method private a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/e;)Lcom/b/a/g/a/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/b/a/g/a/h",
            "<TTranscodeType;>;>(TY;",
            "Lcom/b/a/g/d",
            "<TTranscodeType;>;",
            "Lcom/b/a/g/e;",
            ")TY;"
        }
    .end annotation

    invoke-static {}, Lcom/b/a/i/j;->a()V

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/b/a/i;->p:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lcom/b/a/g/e;->h()Lcom/b/a/g/e;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/i;->b(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/e;)Lcom/b/a/g/b;

    move-result-object v1

    invoke-interface {p1}, Lcom/b/a/g/a/h;->b()Lcom/b/a/g/b;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/b/a/g/b;->a(Lcom/b/a/g/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0, v2}, Lcom/b/a/i;->a(Lcom/b/a/g/e;Lcom/b/a/g/b;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Lcom/b/a/g/b;->h()V

    invoke-static {v2}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Lcom/b/a/g/b;->a()V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/b/a/i;->d:Lcom/b/a/j;

    invoke-virtual {v0, p1}, Lcom/b/a/j;->a(Lcom/b/a/g/a/h;)V

    invoke-interface {p1, v1}, Lcom/b/a/g/a/h;->a(Lcom/b/a/g/b;)V

    iget-object v0, p0, Lcom/b/a/i;->d:Lcom/b/a/j;

    invoke-virtual {v0, p1, v1}, Lcom/b/a/j;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/b;)V

    goto :goto_0
.end method

.method private a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;IILcom/b/a/g/e;)Lcom/b/a/g/b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<TTranscodeType;>;",
            "Lcom/b/a/g/d",
            "<TTranscodeType;>;",
            "Lcom/b/a/g/c;",
            "Lcom/b/a/k",
            "<*-TTranscodeType;>;",
            "Lcom/b/a/g;",
            "II",
            "Lcom/b/a/g/e;",
            ")",
            "Lcom/b/a/g/b;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/i;->m:Lcom/b/a/i;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/b/a/g/a;

    invoke-direct {v0, p3}, Lcom/b/a/g/a;-><init>(Lcom/b/a/g/c;)V

    move-object v9, v0

    move-object v3, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/b/a/i;->b(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;IILcom/b/a/g/e;)Lcom/b/a/g/b;

    move-result-object v10

    if-nez v9, :cond_0

    move-object v9, v10

    :goto_1
    return-object v9

    :cond_0
    iget-object v0, p0, Lcom/b/a/i;->m:Lcom/b/a/i;

    iget-object v0, v0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->y()I

    move-result v6

    iget-object v0, p0, Lcom/b/a/i;->m:Lcom/b/a/i;

    iget-object v0, v0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->A()I

    move-result v7

    invoke-static/range {p6 .. p7}, Lcom/b/a/i/j;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/i;->m:Lcom/b/a/i;

    iget-object v0, v0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p8 .. p8}, Lcom/b/a/g/e;->y()I

    move-result v6

    invoke-virtual/range {p8 .. p8}, Lcom/b/a/g/e;->A()I

    move-result v7

    :cond_1
    iget-object v0, p0, Lcom/b/a/i;->m:Lcom/b/a/i;

    iget-object v1, p0, Lcom/b/a/i;->m:Lcom/b/a/i;

    iget-object v4, v1, Lcom/b/a/i;->i:Lcom/b/a/k;

    iget-object v1, p0, Lcom/b/a/i;->m:Lcom/b/a/i;

    iget-object v1, v1, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v1}, Lcom/b/a/g/e;->x()Lcom/b/a/g;

    move-result-object v5

    iget-object v1, p0, Lcom/b/a/i;->m:Lcom/b/a/i;

    iget-object v8, v1, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v9

    invoke-direct/range {v0 .. v8}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;IILcom/b/a/g/e;)Lcom/b/a/g/b;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lcom/b/a/g/a;->a(Lcom/b/a/g/b;Lcom/b/a/g/b;)V

    goto :goto_1

    :cond_2
    move-object v9, v0

    move-object v3, p3

    goto :goto_0
.end method

.method private a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/e;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;II)Lcom/b/a/g/b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<TTranscodeType;>;",
            "Lcom/b/a/g/d",
            "<TTranscodeType;>;",
            "Lcom/b/a/g/e;",
            "Lcom/b/a/g/c;",
            "Lcom/b/a/k",
            "<*-TTranscodeType;>;",
            "Lcom/b/a/g;",
            "II)",
            "Lcom/b/a/g/b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/i;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/b/a/i;->h:Lcom/b/a/e;

    iget-object v2, p0, Lcom/b/a/i;->j:Ljava/lang/Object;

    iget-object v3, p0, Lcom/b/a/i;->e:Ljava/lang/Class;

    iget-object v10, p0, Lcom/b/a/i;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/b/a/i;->h:Lcom/b/a/e;

    invoke-virtual {v4}, Lcom/b/a/e;->b()Lcom/b/a/c/b/j;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Lcom/b/a/k;->b()Lcom/b/a/g/b/c;

    move-result-object v13

    move-object/from16 v4, p3

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p6

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    invoke-static/range {v0 .. v13}, Lcom/b/a/g/g;->a(Landroid/content/Context;Lcom/b/a/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/b/a/g/e;IILcom/b/a/g;Lcom/b/a/g/a/h;Lcom/b/a/g/d;Ljava/util/List;Lcom/b/a/g/c;Lcom/b/a/c/b/j;Lcom/b/a/g/b/c;)Lcom/b/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/b/a/g;)Lcom/b/a/g;
    .locals 3

    sget-object v0, Lcom/b/a/i$1;->b:[I

    invoke-virtual {p1}, Lcom/b/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v2}, Lcom/b/a/g/e;->x()Lcom/b/a/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/b/a/g;->c:Lcom/b/a/g;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/b/a/g;->b:Lcom/b/a/g;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/b/a/g;->a:Lcom/b/a/g;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/b/a/g/e;Lcom/b/a/g/b;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/b/a/g/e;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/b/a/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;IILcom/b/a/g/e;)Lcom/b/a/g/b;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<TTranscodeType;>;",
            "Lcom/b/a/g/d",
            "<TTranscodeType;>;",
            "Lcom/b/a/g/c;",
            "Lcom/b/a/k",
            "<*-TTranscodeType;>;",
            "Lcom/b/a/g;",
            "II",
            "Lcom/b/a/g/e;",
            ")",
            "Lcom/b/a/g/b;"
        }
    .end annotation

    iget-object v1, p0, Lcom/b/a/i;->l:Lcom/b/a/i;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/b/a/i;->q:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/b/a/i;->l:Lcom/b/a/i;

    iget-object v1, v1, Lcom/b/a/i;->i:Lcom/b/a/k;

    iget-object v2, p0, Lcom/b/a/i;->l:Lcom/b/a/i;

    iget-boolean v2, v2, Lcom/b/a/i;->o:Z

    if-eqz v2, :cond_5

    move-object/from16 v11, p4

    :goto_0
    iget-object v1, p0, Lcom/b/a/i;->l:Lcom/b/a/i;

    iget-object v1, v1, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v1}, Lcom/b/a/g/e;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/b/a/i;->l:Lcom/b/a/i;

    iget-object v1, v1, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v1}, Lcom/b/a/g/e;->x()Lcom/b/a/g;

    move-result-object v1

    move-object v12, v1

    :goto_1
    iget-object v1, p0, Lcom/b/a/i;->l:Lcom/b/a/i;

    iget-object v1, v1, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v1}, Lcom/b/a/g/e;->y()I

    move-result v2

    iget-object v1, p0, Lcom/b/a/i;->l:Lcom/b/a/i;

    iget-object v1, v1, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v1}, Lcom/b/a/g/e;->A()I

    move-result v1

    invoke-static/range {p6 .. p7}, Lcom/b/a/i/j;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/b/a/i;->l:Lcom/b/a/i;

    iget-object v3, v3, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v3}, Lcom/b/a/g/e;->z()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p8 .. p8}, Lcom/b/a/g/e;->y()I

    move-result v2

    invoke-virtual/range {p8 .. p8}, Lcom/b/a/g/e;->A()I

    move-result v1

    move v13, v1

    move v14, v2

    :goto_2
    new-instance v5, Lcom/b/a/g/h;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Lcom/b/a/g/h;-><init>(Lcom/b/a/g/c;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/e;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;II)Lcom/b/a/g/b;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/b/a/i;->q:Z

    iget-object v2, p0, Lcom/b/a/i;->l:Lcom/b/a/i;

    iget-object v3, p0, Lcom/b/a/i;->l:Lcom/b/a/i;

    iget-object v10, v3, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v6, v11

    move-object v7, v12

    move v8, v14

    move v9, v13

    invoke-direct/range {v2 .. v10}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;IILcom/b/a/g/e;)Lcom/b/a/g/b;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/b/a/i;->q:Z

    invoke-virtual {v5, v1, v2}, Lcom/b/a/g/h;->a(Lcom/b/a/g/b;Lcom/b/a/g/b;)V

    :goto_3
    return-object v5

    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/b/a/i;->a(Lcom/b/a/g;)Lcom/b/a/g;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/b/a/i;->n:Ljava/lang/Float;

    if-eqz v1, :cond_3

    new-instance v5, Lcom/b/a/g/h;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Lcom/b/a/g/h;-><init>(Lcom/b/a/g/c;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/e;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;II)Lcom/b/a/g/b;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Lcom/b/a/g/e;->a()Lcom/b/a/g/e;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/i;->n:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/b/a/g/e;->a(F)Lcom/b/a/g/e;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/b/a/i;->a(Lcom/b/a/g;)Lcom/b/a/g;

    move-result-object v7

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/e;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;II)Lcom/b/a/g/b;

    move-result-object v1

    invoke-virtual {v5, v10, v1}, Lcom/b/a/g/h;->a(Lcom/b/a/g/b;Lcom/b/a/g/b;)V

    goto :goto_3

    :cond_3
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/e;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;II)Lcom/b/a/g/b;

    move-result-object v5

    goto :goto_3

    :cond_4
    move v13, v1

    move v14, v2

    goto/16 :goto_2

    :cond_5
    move-object v11, v1

    goto/16 :goto_0
.end method

.method private b(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/e;)Lcom/b/a/g/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<TTranscodeType;>;",
            "Lcom/b/a/g/d",
            "<TTranscodeType;>;",
            "Lcom/b/a/g/e;",
            ")",
            "Lcom/b/a/g/b;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/i;->i:Lcom/b/a/k;

    invoke-virtual {p3}, Lcom/b/a/g/e;->x()Lcom/b/a/g;

    move-result-object v5

    invoke-virtual {p3}, Lcom/b/a/g/e;->y()I

    move-result v6

    invoke-virtual {p3}, Lcom/b/a/g/e;->A()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/c;Lcom/b/a/k;Lcom/b/a/g;IILcom/b/a/g/e;)Lcom/b/a/g/b;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Lcom/b/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/b/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/i;->j:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/i;->p:Z

    return-object p0
.end method


# virtual methods
.method public a(Lcom/b/a/g/a/h;)Lcom/b/a/g/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/b/a/g/a/h",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;)Lcom/b/a/g/a/h;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;)Lcom/b/a/g/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/b/a/g/a/h",
            "<TTranscodeType;>;>(TY;",
            "Lcom/b/a/g/d",
            "<TTranscodeType;>;)TY;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/b/a/i;->a()Lcom/b/a/g/e;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/e;)Lcom/b/a/g/a/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/b/a/g/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/b/a/g/a/i",
            "<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lcom/b/a/i/j;->a()V

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/b/a/g/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/b/a/i$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/b/a/i;->h:Lcom/b/a/e;

    iget-object v2, p0, Lcom/b/a/i;->e:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/b/a/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/b/a/g/a/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/b/a/i;->a(Lcom/b/a/g/a/h;Lcom/b/a/g/d;Lcom/b/a/g/e;)Lcom/b/a/g/a/h;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/a/i;

    return-object v0

    :pswitch_0
    invoke-virtual {v0}, Lcom/b/a/g/e;->a()Lcom/b/a/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/g/e;->d()Lcom/b/a/g/e;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/b/a/g/e;->a()Lcom/b/a/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/g/e;->f()Lcom/b/a/g/e;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/b/a/g/e;->a()Lcom/b/a/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/g/e;->e()Lcom/b/a/g/e;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/b/a/g/e;->a()Lcom/b/a/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/g/e;->f()Lcom/b/a/g/e;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a()Lcom/b/a/g/e;
    .locals 2

    iget-object v0, p0, Lcom/b/a/i;->f:Lcom/b/a/g/e;

    iget-object v1, p0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->a()Lcom/b/a/g/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    goto :goto_0
.end method

.method public a(Lcom/b/a/g/e;)Lcom/b/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/e;",
            ")",
            "Lcom/b/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/i;->a()Lcom/b/a/g/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/g/e;->a(Lcom/b/a/g/e;)Lcom/b/a/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/b/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/b/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/b/a/i;->b(Ljava/lang/Object;)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/b/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/b/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/b/a/i;->b(Ljava/lang/Object;)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/b/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/b/a/i;->b(Ljava/lang/Object;)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/b/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/i;

    iget-object v1, v0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    invoke-virtual {v1}, Lcom/b/a/g/e;->a()Lcom/b/a/g/e;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/i;->b:Lcom/b/a/g/e;

    iget-object v1, v0, Lcom/b/a/i;->i:Lcom/b/a/k;

    invoke-virtual {v1}, Lcom/b/a/k;->a()Lcom/b/a/k;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/i;->i:Lcom/b/a/k;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/i;->b()Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method
