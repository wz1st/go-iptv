.class public Landroid/support/v4/graphics/f;
.super Landroid/support/v4/graphics/d;


# instance fields
.field protected final a:Ljava/lang/Class;

.field protected final b:Ljava/lang/reflect/Constructor;

.field protected final c:Ljava/lang/reflect/Method;

.field protected final d:Ljava/lang/reflect/Method;

.field protected final e:Ljava/lang/reflect/Method;

.field protected final f:Ljava/lang/reflect/Method;

.field protected final g:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/graphics/d;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/graphics/f;->a()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/support/v4/graphics/f;->a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {p0, v7}, Landroid/support/v4/graphics/f;->b(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {p0, v7}, Landroid/support/v4/graphics/f;->c(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {p0, v7}, Landroid/support/v4/graphics/f;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0, v7}, Landroid/support/v4/graphics/f;->e(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v7}, Landroid/support/v4/graphics/f;->f(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    iput-object v7, p0, Landroid/support/v4/graphics/f;->a:Ljava/lang/Class;

    iput-object v6, p0, Landroid/support/v4/graphics/f;->b:Ljava/lang/reflect/Constructor;

    iput-object v5, p0, Landroid/support/v4/graphics/f;->c:Ljava/lang/reflect/Method;

    iput-object v4, p0, Landroid/support/v4/graphics/f;->d:Ljava/lang/reflect/Method;

    iput-object v3, p0, Landroid/support/v4/graphics/f;->e:Ljava/lang/reflect/Method;

    iput-object v2, p0, Landroid/support/v4/graphics/f;->f:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroid/support/v4/graphics/f;->g:Ljava/lang/reflect/Method;

    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "TypefaceCompatApi26Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to collect necessary methods for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/f;->c:Ljava/lang/reflect/Method;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/f;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/graphics/f;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-string v0, "TypefaceCompatApi26Impl"

    const-string v1, "Unable to collect necessary private methods. Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/f;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/f;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/f;->b:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/f;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 8

    const/4 v5, -0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/support/v4/graphics/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Landroid/support/v4/graphics/d;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/graphics/f;->c()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/graphics/f;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Landroid/support/v4/graphics/f;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Landroid/support/v4/graphics/f;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/graphics/f;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v7

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/c/b$b;I)Landroid/graphics/Typeface;
    .locals 9

    array-length v0, p3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/graphics/f;->b()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/f;->a([Landroid/support/v4/c/b$b;I)Landroid/support/v4/c/b$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/c/b$b;->a()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v1, v2, v3, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    const/4 v2, 0x0

    if-nez v3, :cond_3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v2, v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Landroid/support/v4/c/b$b;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/c/b$b;->d()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_5
    invoke-static {v2, v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_1
    if-eqz v3, :cond_5

    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    :goto_2
    :try_start_8
    throw v1

    :catch_4
    move-exception v0

    invoke-static {v2, v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :cond_7
    invoke-static {p1, p3, p2}, Landroid/support/v4/c/b;->a(Landroid/content/Context;[Landroid/support/v4/c/b$b;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {p0}, Landroid/support/v4/graphics/f;->c()Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    array-length v8, p3

    const/4 v2, 0x0

    move v6, v2

    :goto_3
    if-ge v6, v8, :cond_b

    aget-object v5, p3, v6

    invoke-virtual {v5}, Landroid/support/v4/c/b$b;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    if-nez v2, :cond_8

    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Landroid/support/v4/c/b$b;->b()I

    move-result v3

    invoke-virtual {v5}, Landroid/support/v4/c/b$b;->c()I

    move-result v4

    invoke-virtual {v5}, Landroid/support/v4/c/b$b;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v5, 0x1

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/graphics/f;->a(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, v1}, Landroid/support/v4/graphics/f;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x0

    goto :goto_5

    :cond_a
    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    if-nez v0, :cond_c

    invoke-direct {p0, v1}, Landroid/support/v4/graphics/f;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, v1}, Landroid/support/v4/graphics/f;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, v1}, Landroid/support/v4/graphics/f;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Landroid/support/v4/content/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 11

    invoke-direct {p0}, Landroid/support/v4/graphics/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/graphics/d;->a(Landroid/content/Context;Landroid/support/v4/content/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/graphics/f;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/content/a/c$b;->a()[Landroid/support/v4/content/a/c$c;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v0, v9, v8

    invoke-virtual {v0}, Landroid/support/v4/content/a/c$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/content/a/c$c;->e()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/v4/content/a/c$c;->b()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v4/content/a/c$c;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v0}, Landroid/support/v4/content/a/c$c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/graphics/f;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Landroid/support/v4/graphics/f;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Landroid/support/v4/graphics/f;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Landroid/support/v4/graphics/f;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 5

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/graphics/f;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/support/v4/graphics/f;->g:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected a()Ljava/lang/Class;
    .locals 1

    const-string v0, "android.graphics.FontFamily"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4

    const-string v0, "addFontFromAssetManager"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/res/AssetManager;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4

    const-string v0, "addFontFromBuffer"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/nio/ByteBuffer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "freeze"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "abortCreation"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected f(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6

    const/4 v5, 0x1

    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/graphics/Typeface;

    const-string v2, "createFromFamiliesWithDefault"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v3, v5

    const/4 v0, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object v0
.end method
