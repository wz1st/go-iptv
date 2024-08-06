.class public Lcom/a/a/c/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;
.implements Lcom/a/a/c/t;


# static fields
.field public static a:Lcom/a/a/c/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/c/ab;

    invoke-direct {v0}, Lcom/a/a/c/ab;-><init>()V

    sput-object v0, Lcom/a/a/c/ab;->a:Lcom/a/a/c/ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/a/a/b/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/a/a/c/z;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/a/a/c/z;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
