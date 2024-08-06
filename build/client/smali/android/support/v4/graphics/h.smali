.class Landroid/support/v4/graphics/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/h$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/support/v4/content/a/c$b;I)Landroid/support/v4/content/a/c$c;
    .locals 2

    invoke-virtual {p1}, Landroid/support/v4/content/a/c$b;->a()[Landroid/support/v4/content/a/c$c;

    move-result-object v0

    new-instance v1, Landroid/support/v4/graphics/h$2;

    invoke-direct {v1, p0}, Landroid/support/v4/graphics/h$2;-><init>(Landroid/support/v4/graphics/h;)V

    invoke-static {v0, p2, v1}, Landroid/support/v4/graphics/h;->a([Ljava/lang/Object;ILandroid/support/v4/graphics/h$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/a/c$c;

    return-object v0
.end method

.method private static a([Ljava/lang/Object;ILandroid/support/v4/graphics/h$a;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroid/support/v4/graphics/h$a",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    const/16 v0, 0x190

    move v8, v0

    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    const/4 v5, 0x0

    const v3, 0x7fffffff

    array-length v9, p0

    move v7, v2

    :goto_2
    if-ge v7, v9, :cond_5

    aget-object v6, p0, v7

    invoke-interface {p2, v6}, Landroid/support/v4/graphics/h$a;->b(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v10, v4, 0x2

    invoke-interface {p2, v6}, Landroid/support/v4/graphics/h$a;->a(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v0, :cond_4

    move v4, v2

    :goto_3
    add-int/2addr v4, v10

    if-eqz v5, :cond_0

    if-le v3, v4, :cond_1

    :cond_0
    move v3, v4

    move-object v5, v6

    :cond_1
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_2

    :cond_2
    const/16 v0, 0x2bc

    move v8, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_3

    :cond_5
    return-object v5
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/support/v4/graphics/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v1, p2, p3}, Landroid/support/v4/graphics/i;->a(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/c/b$b;I)Landroid/graphics/Typeface;
    .locals 4

    const/4 v0, 0x0

    array-length v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/h;->a([Landroid/support/v4/c/b$b;I)Landroid/support/v4/c/b$b;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/c/b$b;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/graphics/h;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1}, Landroid/support/v4/graphics/i;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Landroid/support/v4/graphics/i;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_2
    invoke-static {v3}, Landroid/support/v4/graphics/i;->a(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Landroid/support/v4/content/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 2

    invoke-direct {p0, p2, p4}, Landroid/support/v4/graphics/h;->a(Landroid/support/v4/content/a/c$b;I)Landroid/support/v4/content/a/c$c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/content/a/c$c;->f()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/content/a/c$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v1, v0, p4}, Landroid/support/v4/graphics/c;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/support/v4/graphics/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v1, p2}, Landroid/support/v4/graphics/i;->a(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method protected a([Landroid/support/v4/c/b$b;I)Landroid/support/v4/c/b$b;
    .locals 1

    new-instance v0, Landroid/support/v4/graphics/h$1;

    invoke-direct {v0, p0}, Landroid/support/v4/graphics/h$1;-><init>(Landroid/support/v4/graphics/h;)V

    invoke-static {p1, p2, v0}, Landroid/support/v4/graphics/h;->a([Ljava/lang/Object;ILandroid/support/v4/graphics/h$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/b$b;

    return-object v0
.end method
