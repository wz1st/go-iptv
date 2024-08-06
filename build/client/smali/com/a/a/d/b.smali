.class public Lcom/a/a/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:[Lcom/a/a/d/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/a/a/d/b$a",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/a/a/d/b;->b:I

    new-array v0, p1, [Lcom/a/a/d/b$a;

    iput-object v0, p0, Lcom/a/a/d/b;->a:[Lcom/a/a/d/b$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")TV;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/a/a/d/b;->b:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/d/b;->a:[Lcom/a/a/d/b$a;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/a/a/d/b$a;->b:Ljava/lang/reflect/Type;

    if-ne p1, v1, :cond_0

    iget-object v0, v0, Lcom/a/a/d/b$a;->c:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/a/a/d/b$a;->d:Lcom/a/a/d/b$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TV;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget v0, p0, Lcom/a/a/d/b;->b:I

    and-int v2, v1, v0

    iget-object v0, p0, Lcom/a/a/d/b;->a:[Lcom/a/a/d/b$a;

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/a/a/d/b$a;->b:Ljava/lang/reflect/Type;

    if-ne p1, v3, :cond_0

    iput-object p2, v0, Lcom/a/a/d/b$a;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, v0, Lcom/a/a/d/b$a;->d:Lcom/a/a/d/b$a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/a/d/b$a;

    iget-object v3, p0, Lcom/a/a/d/b;->a:[Lcom/a/a/d/b$a;

    aget-object v3, v3, v2

    invoke-direct {v0, p1, p2, v1, v3}, Lcom/a/a/d/b$a;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Object;ILcom/a/a/d/b$a;)V

    iget-object v1, p0, Lcom/a/a/d/b;->a:[Lcom/a/a/d/b$a;

    aput-object v0, v1, v2

    const/4 v0, 0x0

    goto :goto_1
.end method
