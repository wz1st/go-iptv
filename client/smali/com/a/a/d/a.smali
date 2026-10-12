.class public Lcom/a/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/a/a/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Field;

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/reflect/Type;

.field public final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final i:Z

.field public final j:[C

.field public final k:Z

.field public final l:Ljava/lang/String;

.field private m:I

.field private final n:Lcom/a/a/a/b;

.field private final o:Lcom/a/a/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    const/16 v7, 0x22

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/a/a/d/a;->m:I

    iput-object p1, p0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/d/a;->h:Ljava/lang/Class;

    iput-object p3, p0, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    iput-object p4, p0, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    iput-object v6, p0, Lcom/a/a/d/a;->b:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    iput p6, p0, Lcom/a/a/d/a;->m:I

    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/d/a;->k:Z

    iput-object v6, p0, Lcom/a/a/d/a;->n:Lcom/a/a/a/b;

    iput-object v6, p0, Lcom/a/a/d/a;->o:Lcom/a/a/a/b;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/a;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/a/a/d/a;->d:Z

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/d/a;->e:Z

    :goto_1
    iput-boolean v1, p0, Lcom/a/a/d/a;->i:Z

    iget-object v0, p0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, 0x3

    new-array v3, v3, [C

    iput-object v3, p0, Lcom/a/a/d/a;->j:[C

    iget-object v3, p0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/a/a/d/a;->j:[C

    invoke-virtual {v3, v1, v4, v5, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v2, p0, Lcom/a/a/d/a;->j:[C

    aput-char v7, v2, v1

    iget-object v1, p0, Lcom/a/a/d/a;->j:[C

    add-int/lit8 v2, v0, 0x1

    aput-char v7, v1, v2

    iget-object v1, p0, Lcom/a/a/d/a;->j:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    iput-object v6, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/a/a/d/a;->d:Z

    iput-boolean v1, p0, Lcom/a/a/d/a;->e:Z

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/a/a/a/b;Lcom/a/a/a/b;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "II",
            "Lcom/a/a/a/b;",
            "Lcom/a/a/a/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/d/a;->m:I

    iput-object p1, p0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/d/a;->b:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    iput p6, p0, Lcom/a/a/d/a;->m:I

    iput-object p8, p0, Lcom/a/a/d/a;->o:Lcom/a/a/a/b;

    iput-object p9, p0, Lcom/a/a/d/a;->n:Lcom/a/a/a/b;

    invoke-virtual {p0}, Lcom/a/a/d/a;->a()Lcom/a/a/a/b;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/a/a/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    if-eqz p2, :cond_1

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    if-ne v0, v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/a/a/d/a;->d:Z

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/a/a/d/a;->e:Z

    :goto_2
    iget-object v0, p0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/a/a/d/a;->j:[C

    iget-object v1, p0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/a/a/d/a;->j:[C

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lcom/a/a/d/a;->j:[C

    const/4 v2, 0x0

    const/16 v3, 0x22

    aput-char v3, v1, v2

    iget-object v1, p0, Lcom/a/a/d/a;->j:[C

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x22

    aput-char v3, v1, v2

    iget-object v1, p0, Lcom/a/a/d/a;->j:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-class v0, Ljava/lang/Class;

    if-eq v1, v0, :cond_2

    const-class v0, Ljava/lang/String;

    if-eq v1, v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move-object v0, v1

    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/a/a/d/a;->i:Z

    move-object v2, v1

    :goto_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/d/a;->h:Ljava/lang/Class;

    move-object v1, v0

    :goto_5
    if-eqz p4, :cond_f

    const-class v0, Ljava/lang/Object;

    if-ne v2, v0, :cond_f

    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_f

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p4, v0}, Lcom/a/a/d/a;->a(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/a/a/d/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/d/a;->k:Z

    :goto_6
    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/d/a;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/d/a;->e:Z

    goto/16 :goto_2

    :cond_6
    if-eqz p10, :cond_7

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v0, Ljava/lang/Class;

    if-ne v1, v0, :cond_9

    move-object v0, v1

    :goto_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/a/a/d/a;->i:Z

    move-object v2, v1

    goto :goto_4

    :cond_9
    if-eqz p10, :cond_a

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_7

    :cond_a
    move-object v0, v1

    goto :goto_7

    :cond_b
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_c

    const-class v0, Ljava/lang/String;

    if-eq v2, v0, :cond_c

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    move-object v0, v2

    :goto_8
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/d/a;->h:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/a/a/d/a;->i:Z

    move-object v1, v0

    goto :goto_5

    :cond_d
    if-eqz p10, :cond_e

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_8

    :cond_e
    move-object v0, v2

    goto :goto_8

    :cond_f
    instance-of v0, v1, Ljava/lang/Class;

    if-nez v0, :cond_10

    if-eqz p5, :cond_11

    :goto_9
    invoke-static {p4, p5, v1}, Lcom/a/a/d/a;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eq v0, v1, :cond_14

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_12

    invoke-static {v0}, Lcom/a/a/d/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v0

    :cond_10
    :goto_a
    iput-object v1, p0, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    iput-object v2, p0, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, p0, Lcom/a/a/d/a;->k:Z

    goto/16 :goto_6

    :cond_11
    move-object p5, p4

    goto :goto_9

    :cond_12
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/a/a/d/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v0

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_b

    :cond_14
    move-object v1, v0

    goto :goto_a
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/a/a/d/a;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {v1}, Lcom/a/a/d/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/a/a/d/d;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/a/a/d/d;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lcom/a/a/d/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    move v2, v3

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object p2, v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_7

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    move-object v2, v1

    :goto_2
    move v7, v3

    move v5, v3

    :goto_3
    array-length v1, v8

    if-ge v7, v1, :cond_9

    if-eqz p1, :cond_9

    aget-object v1, v8, v7

    instance-of v6, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_8

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    move v6, v3

    :goto_4
    array-length v9, v2

    if-ge v6, v9, :cond_8

    aget-object v9, v2, v6

    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v4, :cond_5

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    :cond_5
    aget-object v5, v4, v6

    aput-object v5, v8, v7

    const/4 v5, 0x1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    move-object p1, v1

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_0

    new-instance p2, Lcom/a/a/d/c;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p2, v8, v1, v0}, Lcom/a/a/d/c;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :cond_a
    move-object p1, v4

    move-object v2, v4

    goto :goto_2
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-ne v4, v3, :cond_4

    invoke-interface {v3}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_3

    aget-object v4, v1, v0

    if-ne v4, p1, :cond_2

    aget-object v0, v3, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/a/a/d/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;)I
    .locals 2

    iget v0, p0, Lcom/a/a/d/a;->m:I

    iget v1, p1, Lcom/a/a/d/a;->m:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/a/a/d/a;->m:I

    iget v1, p1, Lcom/a/a/d/a;->m:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Lcom/a/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/a;->n:Lcom/a/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/a;->n:Lcom/a/a/a/b;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/a;->o:Lcom/a/a/a/b;

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/a/a/d/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/d/a;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/a/a/d/a;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/a/a/d/a;->a(Lcom/a/a/d/a;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/a/a/d/a;

    invoke-virtual {p0, p1}, Lcom/a/a/d/a;->a(Lcom/a/a/d/a;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/a;->a:Ljava/lang/String;

    return-object v0
.end method
