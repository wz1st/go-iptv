.class Lcom/b/a/c/b/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/b/a/c/b/g$d;

.field final b:Landroid/support/v4/e/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l$a",
            "<",
            "Lcom/b/a/c/b/g",
            "<*>;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Lcom/b/a/c/b/g$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x96

    new-instance v1, Lcom/b/a/c/b/j$a$1;

    invoke-direct {v1, p0}, Lcom/b/a/c/b/j$a$1;-><init>(Lcom/b/a/c/b/j$a;)V

    invoke-static {v0, v1}, Lcom/b/a/i/a/a;->a(ILcom/b/a/i/a/a$a;)Landroid/support/v4/e/l$a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/j$a;->b:Landroid/support/v4/e/l$a;

    iput-object p1, p0, Lcom/b/a/c/b/j$a;->a:Lcom/b/a/c/b/g$d;

    return-void
.end method


# virtual methods
.method a(Lcom/b/a/e;Ljava/lang/Object;Lcom/b/a/c/b/m;Lcom/b/a/c/h;IILjava/lang/Class;Ljava/lang/Class;Lcom/b/a/g;Lcom/b/a/c/b/i;Ljava/util/Map;ZZZLcom/b/a/c/j;Lcom/b/a/c/b/g$a;)Lcom/b/a/c/b/g;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/e;",
            "Ljava/lang/Object;",
            "Lcom/b/a/c/b/m;",
            "Lcom/b/a/c/h;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/b/a/g;",
            "Lcom/b/a/c/b/i;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/c/m",
            "<*>;>;ZZZ",
            "Lcom/b/a/c/j;",
            "Lcom/b/a/c/b/g$a",
            "<TR;>;)",
            "Lcom/b/a/c/b/g",
            "<TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/b/a/c/b/j$a;->b:Landroid/support/v4/e/l$a;

    invoke-interface {v1}, Landroid/support/v4/e/l$a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/c/b/g;

    invoke-static {v1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/c/b/g;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/b/a/c/b/j$a;->c:I

    move/from16 v18, v0

    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/b/a/c/b/j$a;->c:I

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

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-virtual/range {v1 .. v18}, Lcom/b/a/c/b/g;->a(Lcom/b/a/e;Ljava/lang/Object;Lcom/b/a/c/b/m;Lcom/b/a/c/h;IILjava/lang/Class;Ljava/lang/Class;Lcom/b/a/g;Lcom/b/a/c/b/i;Ljava/util/Map;ZZZLcom/b/a/c/j;Lcom/b/a/c/b/g$a;I)Lcom/b/a/c/b/g;

    move-result-object v1

    return-object v1
.end method
