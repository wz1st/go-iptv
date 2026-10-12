.class public final Lcom/d/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    instance-of v0, p0, Landroid/support/v4/e/n;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Landroid/support/v4/e/n;

    invoke-virtual {v0}, Landroid/support/v4/e/n;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    instance-of v0, p0, Landroid/util/SparseArray;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    instance-of v0, p0, Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    instance-of v0, p0, Landroid/util/SparseIntArray;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_a

    instance-of v0, p0, Landroid/util/SparseLongArray;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    instance-of v0, p0, Landroid/support/v4/e/h;

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Landroid/support/v4/e/h;

    invoke-virtual {v0}, Landroid/support/v4/e/h;->b()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_d

    instance-of v0, p0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_c

    check-cast p0, Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_1
    move v1, v0

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto :goto_1

    :cond_d
    move v1, v2

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

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

.method public static b(Ljava/util/Map;)Z
    .locals 1

    invoke-static {p0}, Lcom/d/a/a;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
