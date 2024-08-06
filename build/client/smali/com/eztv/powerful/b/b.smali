.class public Lcom/eztv/powerful/b/b;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/eztv/powerful/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/setting/MySettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/eztv/powerful/SplashActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/b/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/eztv/powerful/SplashActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/channels/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/b/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/setting/MySettings;

    invoke-direct {v0, p1}, Lcom/setting/MySettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eztv/powerful/b/b;->e:Lcom/setting/MySettings;

    const-string v0, "{}"

    iput-object v0, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/eztv/powerful/SplashActivity;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/setting/MySettings;

    sget-object v3, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/setting/MySettings;-><init>(Landroid/content/Context;)V

    const-string v3, "rand"

    invoke-virtual {v2, v3}, Lcom/setting/MySettings;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eztv/powerful/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/eztv/powerful/b/b;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/eztv/powerful/util/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    const-string v2, "f"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    const-string v2, "b"

    const-string v3, "f"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    const-string v2, "#"

    const-string v3, "b"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    const-string v2, "t"

    const-string v3, "%"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    const-string v2, "y"

    const-string v3, "t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, "y"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/eztv/powerful/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/eztv/powerful/b/b;->a([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/setting/MySettings;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/setting/MySettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/setting/MySettings;->a(I)V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    const-string v1, "\u83b7\u53d6\u8282\u76ee\u4fe1\u606f\u5931\u8d25\uff01\u8bf7\u91cd\u65b0\u542f\u52a8\u8f6f\u4ef6\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/eztv/powerful/b/b;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    add-int/lit8 v1, v2, 0x1

    if-ne v1, p0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/eztv/powerful/b/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/eztv/powerful/PlayerActivity;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2}, Ljava/util/zip/Inflater;-><init>()V

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    const/16 v3, 0x100

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    throw v0
.end method

.method public static c()Lorg/json/JSONObject;
    .locals 12

    const/4 v1, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/eztv/powerful/b/b;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    array-length v7, v5

    move v3, v1

    move v2, v1

    :goto_1
    if-ge v3, v7, :cond_5

    aget-object v1, v5, v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, ".txt"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    const-string v9, "."

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "name"

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v10, ""

    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    const-string v1, "data"

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v4

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    const-string v1, "data"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public static d()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/eztv/powerful/b/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 11

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/eztv/powerful/b/b;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/eztv/powerful/b/b;->d:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move v4, v2

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_4

    new-instance v5, Lcom/eztv/powerful/b/a;

    invoke-direct {v5}, Lcom/eztv/powerful/b/a;-><init>()V

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    const-string v3, "psw"

    const-string v6, ""

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/eztv/powerful/b/a;->e:Ljava/lang/String;

    iget-object v3, v5, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    const-string v6, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/eztv/powerful/b/b;->a:Ljava/util/ArrayList;

    iget-object v6, v5, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lcom/eztv/powerful/b/b;->e:Lcom/setting/MySettings;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hide"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/setting/MySettings;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->a:Landroid/content/Context;

    const-string v3, "\u83b7\u53d6\u8282\u76ee\u4fe1\u606f\u5931\u8d25\uff01\u8bf7\u91cd\u65b0\u542f\u52a8\u8f6f\u4ef6\uff01"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_3

    move v3, v2

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_3

    new-instance v7, Lcom/eztv/powerful/b/c;

    invoke-direct {v7}, Lcom/eztv/powerful/b/c;-><init>()V

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v8, "num"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/eztv/powerful/b/c;->a:I

    const-string v8, "name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/eztv/powerful/b/c;->b:Ljava/lang/String;

    const-string v8, "source"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_2

    move v1, v2

    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_2

    iget-object v9, v7, Lcom/eztv/powerful/b/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    iget-object v1, v5, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v5}, Lcom/eztv/powerful/b/b;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    invoke-virtual {p0}, Lcom/eztv/powerful/b/b;->b()V

    return-void
.end method

.method public a(Lcom/eztv/powerful/b/d;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/eztv/powerful/b/d;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/eztv/powerful/b/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/e;

    iget v2, v0, Lcom/eztv/powerful/b/e;->a:I

    invoke-virtual {p1, v1}, Lcom/eztv/powerful/b/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/e;

    iget v3, v0, Lcom/eztv/powerful/b/e;->b:I

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/eztv/powerful/b/b;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    if-ltz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v4, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method

.method public b(I)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v4, v3

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/eztv/powerful/b/b;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v4}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget v0, v0, Lcom/eztv/powerful/b/c;->a:I

    if-ne p1, v0, :cond_0

    const-string v0, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pos"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const-string v0, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pos"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_2
.end method

.method public b()V
    .locals 14

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/eztv/powerful/b/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/eztv/powerful/b/b$1;

    invoke-direct {v0, p0}, Lcom/eztv/powerful/b/b$1;-><init>(Lcom/eztv/powerful/b/b;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/eztv/powerful/b/a;

    invoke-direct {v6}, Lcom/eztv/powerful/b/a;-><init>()V

    const-string v4, ".txt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Lcom/eztv/powerful/b/a;->a:I

    const/4 v4, 0x0

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/eztv/powerful/b/a;->b:Ljava/lang/String;

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    :cond_6
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_9

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v4, v4, v7

    iput-object v4, v6, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iput-object v2, v6, Lcom/eztv/powerful/b/a;->e:Ljava/lang/String;

    :goto_3
    iget-object v2, v6, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    const-string v4, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/eztv/powerful/b/b;->a:Ljava/util/ArrayList;

    iget-object v4, v6, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lcom/eztv/powerful/b/b;->e:Lcom/setting/MySettings;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hide"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v6, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/setting/MySettings;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_5

    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    :goto_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "#"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "#"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    move v0, v3

    :goto_5
    if-ge v0, v12, :cond_b

    aget-object v13, v11, v0

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :try_start_2
    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/eztv/powerful/b/a;->c:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v6, Lcom/eztv/powerful/b/a;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_a
    :try_start_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_c
    move v0, v1

    :goto_6
    move v1, v0

    goto/16 :goto_2

    :cond_d
    :try_start_5
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/eztv/powerful/b/b;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v4, v0

    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    new-instance v11, Lcom/eztv/powerful/b/c;

    invoke-direct {v11}, Lcom/eztv/powerful/b/c;-><init>()V

    iput v4, v11, Lcom/eztv/powerful/b/c;->a:I

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v11, Lcom/eztv/powerful/b/c;->b:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v11, Lcom/eztv/powerful/b/c;->e:Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/eztv/powerful/b/a;->g:Z

    invoke-virtual {p0, v6}, Lcom/eztv/powerful/b/b;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move v0, v1

    goto :goto_6
.end method

.method public e()I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/eztv/powerful/b/b;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v1, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/eztv/powerful/b/b;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/b/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/a;

    iget-object v0, v0, Lcom/eztv/powerful/b/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/c;

    iget v0, v0, Lcom/eztv/powerful/b/c;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
