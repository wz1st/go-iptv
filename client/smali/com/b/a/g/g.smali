.class public final Lcom/b/a/g/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/g/a/g;
.implements Lcom/b/a/g/b;
.implements Lcom/b/a/g/f;
.implements Lcom/b/a/i/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/g/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/g/a/g;",
        "Lcom/b/a/g/b;",
        "Lcom/b/a/g/f;",
        "Lcom/b/a/i/a/a$c;"
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/e/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l$a",
            "<",
            "Lcom/b/a/g/g",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final c:Z


# instance fields
.field private A:I

.field private B:I

.field private b:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/b/a/i/a/c;

.field private f:Lcom/b/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/g/d",
            "<TR;>;"
        }
    .end annotation
.end field

.field private g:Lcom/b/a/g/c;

.field private h:Landroid/content/Context;

.field private i:Lcom/b/a/e;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private l:Lcom/b/a/g/e;

.field private m:I

.field private n:I

.field private o:Lcom/b/a/g;

.field private p:Lcom/b/a/g/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/g/a/h",
            "<TR;>;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/g/d",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field private r:Lcom/b/a/c/b/j;

.field private s:Lcom/b/a/g/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/g/b/c",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private t:Lcom/b/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/u",
            "<TR;>;"
        }
    .end annotation
.end field

.field private u:Lcom/b/a/c/b/j$d;

.field private v:J

.field private w:Lcom/b/a/g/g$a;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x96

    new-instance v1, Lcom/b/a/g/g$1;

    invoke-direct {v1}, Lcom/b/a/g/g$1;-><init>()V

    invoke-static {v0, v1}, Lcom/b/a/i/a/a;->a(ILcom/b/a/i/a/a$a;)Landroid/support/v4/e/l$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/g/g;->a:Landroid/support/v4/e/l$a;

    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/b/a/g/g;->c:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/b/a/g/g;->c:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/b/a/g/g;->d:Ljava/lang/String;

    invoke-static {}, Lcom/b/a/i/a/c;->a()Lcom/b/a/i/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g/g;->e:Lcom/b/a/i/a/c;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    int-to-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->t()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->t()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/b/a/g/g;->i:Lcom/b/a/e;

    invoke-static {v1, p1, v0}, Lcom/b/a/c/d/c/a;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/g;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/b/a/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/b/a/g/e;IILcom/b/a/g;Lcom/b/a/g/a/h;Lcom/b/a/g/d;Ljava/util/List;Lcom/b/a/g/c;Lcom/b/a/c/b/j;Lcom/b/a/g/b/c;)Lcom/b/a/g/g;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/b/a/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/b/a/g/e;",
            "II",
            "Lcom/b/a/g;",
            "Lcom/b/a/g/a/h",
            "<TR;>;",
            "Lcom/b/a/g/d",
            "<TR;>;",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/g/d",
            "<TR;>;>;",
            "Lcom/b/a/g/c;",
            "Lcom/b/a/c/b/j;",
            "Lcom/b/a/g/b/c",
            "<-TR;>;)",
            "Lcom/b/a/g/g",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/g/g;->a:Landroid/support/v4/e/l$a;

    invoke-interface {v0}, Landroid/support/v4/e/l$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/g/g;

    invoke-direct {v0}, Lcom/b/a/g/g;-><init>()V

    :cond_0
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/b/a/g/g;->b(Landroid/content/Context;Lcom/b/a/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/b/a/g/e;IILcom/b/a/g;Lcom/b/a/g/a/h;Lcom/b/a/g/d;Ljava/util/List;Lcom/b/a/g/c;Lcom/b/a/c/b/j;Lcom/b/a/g/b/c;)V

    return-object v0
.end method

.method private a(Lcom/b/a/c/b/p;I)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/g/g;->e:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    iget-object v0, p0, Lcom/b/a/g/g;->i:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->d()I

    move-result v0

    if-gt v0, p2, :cond_0

    const-string v3, "Glide"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with size ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/b/a/g/g;->A:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/b/a/g/g;->B:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x4

    if-gt v0, v3, :cond_0

    const-string v0, "Glide"

    invoke-virtual {p1, v0}, Lcom/b/a/c/b/p;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/g/g;->u:Lcom/b/a/c/b/j$d;

    sget-object v0, Lcom/b/a/g/g$a;->e:Lcom/b/a/g/g$a;

    iput-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    iput-boolean v1, p0, Lcom/b/a/g/g;->b:Z

    :try_start_0
    iget-object v0, p0, Lcom/b/a/g/g;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/g/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/d;

    iget-object v5, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    iget-object v6, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    invoke-direct {p0}, Lcom/b/a/g/g;->r()Z

    move-result v7

    invoke-interface {v0, p1, v5, v6, v7}, Lcom/b/a/g/d;->a(Lcom/b/a/c/b/p;Ljava/lang/Object;Lcom/b/a/g/a/h;Z)Z

    move-result v0

    or-int/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    iget-object v0, p0, Lcom/b/a/g/g;->f:Lcom/b/a/g/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/b/a/g/g;->f:Lcom/b/a/g/d;

    iget-object v4, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    iget-object v5, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    invoke-direct {p0}, Lcom/b/a/g/g;->r()Z

    move-result v6

    invoke-interface {v0, p1, v4, v5, v6}, Lcom/b/a/g/d;->a(Lcom/b/a/c/b/p;Ljava/lang/Object;Lcom/b/a/g/a/h;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    or-int/2addr v0, v3

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/b/a/g/g;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-boolean v2, p0, Lcom/b/a/g/g;->b:Z

    invoke-direct {p0}, Lcom/b/a/g/g;->t()V

    return-void

    :cond_4
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/b/a/g/g;->b:Z

    throw v0
.end method

.method private a(Lcom/b/a/c/b/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/g/g;->r:Lcom/b/a/c/b/j;

    invoke-virtual {v0, p1}, Lcom/b/a/c/b/j;->a(Lcom/b/a/c/b/u;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/g/g;->t:Lcom/b/a/c/b/u;

    return-void
.end method

.method private a(Lcom/b/a/c/b/u;Ljava/lang/Object;Lcom/b/a/c/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<TR;>;TR;",
            "Lcom/b/a/c/a;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/b/a/g/g;->r()Z

    move-result v5

    sget-object v0, Lcom/b/a/g/g$a;->d:Lcom/b/a/g/g$a;

    iput-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    iput-object p1, p0, Lcom/b/a/g/g;->t:Lcom/b/a/c/b/u;

    iget-object v0, p0, Lcom/b/a/g/g;->i:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->d()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const-string v0, "Glide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/g/g;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/g/g;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/b/a/g/g;->v:J

    invoke-static {v2, v3}, Lcom/b/a/i/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v6, p0, Lcom/b/a/g/g;->b:Z

    :try_start_0
    iget-object v0, p0, Lcom/b/a/g/g;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/g/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v7

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/d;

    iget-object v2, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    iget-object v3, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    move-object v1, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/b/a/g/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/b/a/g/a/h;Lcom/b/a/c/a;Z)Z

    move-result v0

    or-int/2addr v8, v0

    goto :goto_0

    :cond_1
    move v8, v7

    :cond_2
    iget-object v0, p0, Lcom/b/a/g/g;->f:Lcom/b/a/g/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/b/a/g/g;->f:Lcom/b/a/g/d;

    iget-object v2, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    iget-object v3, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    move-object v1, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/b/a/g/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/b/a/g/a/h;Lcom/b/a/c/a;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    :goto_1
    or-int/2addr v0, v8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/b/a/g/g;->s:Lcom/b/a/g/b/c;

    invoke-interface {v0, p3, v5}, Lcom/b/a/g/b/c;->a(Lcom/b/a/c/a;Z)Lcom/b/a/g/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    invoke-interface {v1, p2, v0}, Lcom/b/a/g/a/h;->a(Ljava/lang/Object;Lcom/b/a/g/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-boolean v7, p0, Lcom/b/a/g/g;->b:Z

    invoke-direct {p0}, Lcom/b/a/g/g;->s()V

    return-void

    :cond_4
    move v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v7, p0, Lcom/b/a/g/g;->b:Z

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/g/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Lcom/b/a/g/g;Lcom/b/a/g/g;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/g",
            "<*>;",
            "Lcom/b/a/g/g",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/b/a/g/g;->q:Ljava/util/List;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p1, Lcom/b/a/g/g;->q:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/b/a/g/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/b/a/g/g;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Lcom/b/a/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/b/a/g/e;IILcom/b/a/g;Lcom/b/a/g/a/h;Lcom/b/a/g/d;Ljava/util/List;Lcom/b/a/g/c;Lcom/b/a/c/b/j;Lcom/b/a/g/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/b/a/g/e;",
            "II",
            "Lcom/b/a/g;",
            "Lcom/b/a/g/a/h",
            "<TR;>;",
            "Lcom/b/a/g/d",
            "<TR;>;",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/g/d",
            "<TR;>;>;",
            "Lcom/b/a/g/c;",
            "Lcom/b/a/c/b/j;",
            "Lcom/b/a/g/b/c",
            "<-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/g/g;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/b/a/g/g;->i:Lcom/b/a/e;

    iput-object p3, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    iput-object p4, p0, Lcom/b/a/g/g;->k:Ljava/lang/Class;

    iput-object p5, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    iput p6, p0, Lcom/b/a/g/g;->m:I

    iput p7, p0, Lcom/b/a/g/g;->n:I

    iput-object p8, p0, Lcom/b/a/g/g;->o:Lcom/b/a/g;

    iput-object p9, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    iput-object p10, p0, Lcom/b/a/g/g;->f:Lcom/b/a/g/d;

    iput-object p11, p0, Lcom/b/a/g/g;->q:Ljava/util/List;

    iput-object p12, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    iput-object p13, p0, Lcom/b/a/g/g;->r:Lcom/b/a/c/b/j;

    iput-object p14, p0, Lcom/b/a/g/g;->s:Lcom/b/a/g/b/c;

    sget-object v0, Lcom/b/a/g/g$a;->a:Lcom/b/a/g/g$a;

    iput-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    return-void
.end method

.method private i()V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/g/g;->j()V

    iget-object v0, p0, Lcom/b/a/g/g;->e:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    iget-object v0, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    invoke-interface {v0, p0}, Lcom/b/a/g/a/h;->b(Lcom/b/a/g/a/g;)V

    iget-object v0, p0, Lcom/b/a/g/g;->u:Lcom/b/a/c/b/j$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->u:Lcom/b/a/c/b/j$d;

    invoke-virtual {v0}, Lcom/b/a/c/b/j$d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/g/g;->u:Lcom/b/a/c/b/j$d;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/g/g;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/g;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g/g;->x:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/b/a/g/g;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->o()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/b/a/g/g;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g/g;->x:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/g;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/g;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g/g;->y:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/b/a/g/g;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->p()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->p()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/b/a/g/g;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g/g;->y:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/g;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/g;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g/g;->z:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/b/a/g/g;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->r()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v0}, Lcom/b/a/g/e;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/b/a/g/g;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g/g;->z:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/g;->z:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private n()V
    .locals 2

    invoke-direct {p0}, Lcom/b/a/g/g;->q()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/b/a/g/g;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/b/a/g/g;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/b/a/g/g;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    invoke-interface {v1, v0}, Lcom/b/a/g/a/h;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private o()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    invoke-interface {v0, p0}, Lcom/b/a/g/c;->b(Lcom/b/a/g/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    invoke-interface {v0, p0}, Lcom/b/a/g/c;->d(Lcom/b/a/g/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    invoke-interface {v0, p0}, Lcom/b/a/g/c;->c(Lcom/b/a/g/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    invoke-interface {v0}, Lcom/b/a/g/c;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    invoke-interface {v0, p0}, Lcom/b/a/g/c;->e(Lcom/b/a/g/b;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    invoke-interface {v0, p0}, Lcom/b/a/g/c;->f(Lcom/b/a/g/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-direct {p0}, Lcom/b/a/g/g;->j()V

    iget-object v0, p0, Lcom/b/a/g/g;->e:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    invoke-static {}, Lcom/b/a/i/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/g/g;->v:J

    iget-object v0, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/b/a/g/g;->m:I

    iget v1, p0, Lcom/b/a/g/g;->n:I

    invoke-static {v0, v1}, Lcom/b/a/i/j;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/g/g;->m:I

    iput v0, p0, Lcom/b/a/g/g;->A:I

    iget v0, p0, Lcom/b/a/g/g;->n:I

    iput v0, p0, Lcom/b/a/g/g;->B:I

    :cond_0
    invoke-direct {p0}, Lcom/b/a/g/g;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    new-instance v1, Lcom/b/a/c/b/p;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lcom/b/a/c/b/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/b/a/g/g;->a(Lcom/b/a/c/b/p;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v1, Lcom/b/a/g/g$a;->b:Lcom/b/a/g/g$a;

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v1, Lcom/b/a/g/g$a;->d:Lcom/b/a/g/g$a;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/b/a/g/g;->t:Lcom/b/a/c/b/u;

    sget-object v1, Lcom/b/a/c/a;->e:Lcom/b/a/c/a;

    invoke-virtual {p0, v0, v1}, Lcom/b/a/g/g;->a(Lcom/b/a/c/b/u;Lcom/b/a/c/a;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/b/a/g/g$a;->c:Lcom/b/a/g/g$a;

    iput-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    iget v0, p0, Lcom/b/a/g/g;->m:I

    iget v1, p0, Lcom/b/a/g/g;->n:I

    invoke-static {v0, v1}, Lcom/b/a/i/j;->a(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/b/a/g/g;->m:I

    iget v1, p0, Lcom/b/a/g/g;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/b/a/g/g;->a(II)V

    :goto_2
    iget-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v1, Lcom/b/a/g/g$a;->b:Lcom/b/a/g/g$a;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v1, Lcom/b/a/g/g$a;->c:Lcom/b/a/g/g$a;

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/b/a/g/g;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    invoke-direct {p0}, Lcom/b/a/g/g;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/b/a/g/a/h;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    sget-boolean v0, Lcom/b/a/g/g;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/b/a/g/g;->v:J

    invoke-static {v2, v3}, Lcom/b/a/i/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/g/g;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    invoke-interface {v0, p0}, Lcom/b/a/g/a/h;->a(Lcom/b/a/g/a/g;)V

    goto :goto_2
.end method

.method public a(II)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/g/g;->e:Lcom/b/a/i/a/c;

    invoke-virtual {v2}, Lcom/b/a/i/a/c;->b()V

    sget-boolean v2, Lcom/b/a/g/g;->c:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/b/a/g/g;->v:J

    invoke-static {v4, v5}, Lcom/b/a/i/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/b/a/g/g;->a(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v3, Lcom/b/a/g/g$a;->c:Lcom/b/a/g/g$a;

    if-eq v2, v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/b/a/g/g$a;->b:Lcom/b/a/g/g$a;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v2}, Lcom/b/a/g/e;->B()F

    move-result v2

    move/from16 v0, p1

    invoke-static {v0, v2}, Lcom/b/a/g/g;->a(IF)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/b/a/g/g;->A:I

    move/from16 v0, p2

    invoke-static {v0, v2}, Lcom/b/a/g/g;->a(IF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/b/a/g/g;->B:I

    sget-boolean v2, Lcom/b/a/g/g;->c:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished setup for calling load in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/b/a/g/g;->v:J

    invoke-static {v4, v5}, Lcom/b/a/i/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/b/a/g/g;->a(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/g/g;->r:Lcom/b/a/c/b/j;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/a/g/g;->i:Lcom/b/a/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v5}, Lcom/b/a/g/e;->v()Lcom/b/a/c/h;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/b/a/g/g;->A:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/b/a/g/g;->B:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v8}, Lcom/b/a/g/e;->l()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/b/a/g/g;->k:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/b/a/g/g;->o:Lcom/b/a/g;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v11}, Lcom/b/a/g/e;->m()Lcom/b/a/c/b/i;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v12}, Lcom/b/a/g/e;->i()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v13}, Lcom/b/a/g/e;->j()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v14}, Lcom/b/a/g/e;->C()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v15}, Lcom/b/a/g/e;->k()Lcom/b/a/c/j;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/b/a/g/e;->u()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/b/a/g/e;->D()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/b/a/g/e;->E()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/b/a/g/e;->F()Z

    move-result v19

    move-object/from16 v20, p0

    invoke-virtual/range {v2 .. v20}, Lcom/b/a/c/b/j;->a(Lcom/b/a/e;Ljava/lang/Object;Lcom/b/a/c/h;IILjava/lang/Class;Ljava/lang/Class;Lcom/b/a/g;Lcom/b/a/c/b/i;Ljava/util/Map;ZZLcom/b/a/c/j;ZZZZLcom/b/a/g/f;)Lcom/b/a/c/b/j$d;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/g/g;->u:Lcom/b/a/c/b/j$d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v3, Lcom/b/a/g/g$a;->b:Lcom/b/a/g/g$a;

    if-eq v2, v3, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/g/g;->u:Lcom/b/a/c/b/j$d;

    :cond_4
    sget-boolean v2, Lcom/b/a/g/g;->c:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/b/a/g/g;->v:J

    invoke-static {v4, v5}, Lcom/b/a/i/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/b/a/g/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/b/a/c/b/p;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/b/a/g/g;->a(Lcom/b/a/c/b/p;I)V

    return-void
.end method

.method public a(Lcom/b/a/c/b/u;Lcom/b/a/c/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<*>;",
            "Lcom/b/a/c/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/g/g;->e:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/g/g;->u:Lcom/b/a/c/b/j$d;

    if-nez p1, :cond_0

    new-instance v0, Lcom/b/a/c/b/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/g/g;->k:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/c/b/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/b/a/g/g;->a(Lcom/b/a/c/b/p;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/b/a/g/g;->k:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Lcom/b/a/g/g;->a(Lcom/b/a/c/b/u;)V

    new-instance v2, Lcom/b/a/c/b/p;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/b/a/g/g;->k:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "} inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/b/a/c/b/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/b/a/g/g;->a(Lcom/b/a/c/b/p;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/b/a/g/g;->o()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/b/a/g/g;->a(Lcom/b/a/c/b/u;)V

    sget-object v0, Lcom/b/a/g/g$a;->d:Lcom/b/a/g/g$a;

    iput-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v1, p2}, Lcom/b/a/g/g;->a(Lcom/b/a/c/b/u;Ljava/lang/Object;Lcom/b/a/c/a;)V

    goto :goto_0
.end method

.method public a(Lcom/b/a/g/b;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/b/a/g/g;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/b/a/g/g;

    iget v1, p0, Lcom/b/a/g/g;->m:I

    iget v2, p1, Lcom/b/a/g/g;->m:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/b/a/g/g;->n:I

    iget v2, p1, Lcom/b/a/g/g;->n:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    iget-object v2, p1, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/b/a/i/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/g/g;->k:Ljava/lang/Class;

    iget-object v2, p1, Lcom/b/a/g/g;->k:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    iget-object v2, p1, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    invoke-virtual {v1, v2}, Lcom/b/a/g/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/g/g;->o:Lcom/b/a/g;

    iget-object v2, p1, Lcom/b/a/g/g;->o:Lcom/b/a/g;

    if-ne v1, v2, :cond_0

    invoke-static {p0, p1}, Lcom/b/a/g/g;->a(Lcom/b/a/g/g;Lcom/b/a/g/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/b/a/i/j;->a()V

    invoke-direct {p0}, Lcom/b/a/g/g;->j()V

    iget-object v0, p0, Lcom/b/a/g/g;->e:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    iget-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v1, Lcom/b/a/g/g$a;->f:Lcom/b/a/g/g$a;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/b/a/g/g;->i()V

    iget-object v0, p0, Lcom/b/a/g/g;->t:Lcom/b/a/c/b/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/g/g;->t:Lcom/b/a/c/b/u;

    invoke-direct {p0, v0}, Lcom/b/a/g/g;->a(Lcom/b/a/c/b/u;)V

    :cond_1
    invoke-direct {p0}, Lcom/b/a/g/g;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    invoke-direct {p0}, Lcom/b/a/g/g;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/b/a/g/a/h;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget-object v0, Lcom/b/a/g/g$a;->f:Lcom/b/a/g/g$a;

    iput-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v1, Lcom/b/a/g/g$a;->b:Lcom/b/a/g/g$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v1, Lcom/b/a/g/g$a;->c:Lcom/b/a/g/g$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c_()Lcom/b/a/i/a/c;
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/g;->e:Lcom/b/a/i/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v1, Lcom/b/a/g/g$a;->d:Lcom/b/a/g/g$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/g/g;->d()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v1, Lcom/b/a/g/g$a;->f:Lcom/b/a/g/g$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/b/a/g/g;->w:Lcom/b/a/g/g$a;

    sget-object v1, Lcom/b/a/g/g$a;->e:Lcom/b/a/g/g$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/b/a/g/g;->j()V

    iput-object v0, p0, Lcom/b/a/g/g;->h:Landroid/content/Context;

    iput-object v0, p0, Lcom/b/a/g/g;->i:Lcom/b/a/e;

    iput-object v0, p0, Lcom/b/a/g/g;->j:Ljava/lang/Object;

    iput-object v0, p0, Lcom/b/a/g/g;->k:Ljava/lang/Class;

    iput-object v0, p0, Lcom/b/a/g/g;->l:Lcom/b/a/g/e;

    iput v1, p0, Lcom/b/a/g/g;->m:I

    iput v1, p0, Lcom/b/a/g/g;->n:I

    iput-object v0, p0, Lcom/b/a/g/g;->p:Lcom/b/a/g/a/h;

    iput-object v0, p0, Lcom/b/a/g/g;->q:Ljava/util/List;

    iput-object v0, p0, Lcom/b/a/g/g;->f:Lcom/b/a/g/d;

    iput-object v0, p0, Lcom/b/a/g/g;->g:Lcom/b/a/g/c;

    iput-object v0, p0, Lcom/b/a/g/g;->s:Lcom/b/a/g/b/c;

    iput-object v0, p0, Lcom/b/a/g/g;->u:Lcom/b/a/c/b/j$d;

    iput-object v0, p0, Lcom/b/a/g/g;->x:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/b/a/g/g;->y:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/b/a/g/g;->z:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/b/a/g/g;->A:I

    iput v1, p0, Lcom/b/a/g/g;->B:I

    sget-object v0, Lcom/b/a/g/g;->a:Landroid/support/v4/e/l$a;

    invoke-interface {v0, p0}, Landroid/support/v4/e/l$a;->a(Ljava/lang/Object;)Z

    return-void
.end method
