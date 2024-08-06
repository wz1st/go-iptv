.class public Lcom/eztv/powerful/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/g$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Z

.field public static c:I

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# instance fields
.field public i:Ljava/lang/String;

.field public j:Lcom/setting/MySettings;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field private t:Landroid/content/Context;

.field private u:Z

.field private v:Landroid/app/ProgressDialog;

.field private w:Ljava/lang/String;

.field private x:Lcom/eztv/powerful/a/b;

.field private y:Lcom/eztv/powerful/a/a;

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/eztv/powerful/g;->a:I

    sput-boolean v0, Lcom/eztv/powerful/g;->b:Z

    sput v0, Lcom/eztv/powerful/g;->c:I

    const-string v0, ""

    sput-object v0, Lcom/eztv/powerful/g;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/eztv/powerful/g;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/eztv/powerful/g;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/eztv/powerful/g;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/eztv/powerful/g;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "V1.0"

    iput-object v0, p0, Lcom/eztv/powerful/g;->w:Ljava/lang/String;

    new-instance v0, Lcom/eztv/powerful/g$1;

    invoke-direct {v0, p0}, Lcom/eztv/powerful/g$1;-><init>(Lcom/eztv/powerful/g;)V

    iput-object v0, p0, Lcom/eztv/powerful/g;->z:Landroid/os/Handler;

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

    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eztv/powerful/g;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/eztv/powerful/g;->t:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/g;->t:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/eztv/powerful/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/g;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/eztv/powerful/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/eztv/powerful/g;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/eztv/powerful/g;)Lcom/eztv/powerful/a/a;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/g;->y:Lcom/eztv/powerful/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/eztv/powerful/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/g;->w:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/eztv/powerful/g;->s:Ljava/lang/String;

    const-string v4, "ezTV.apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/eztv/powerful/g;->t:Landroid/content/Context;

    const-string v3, "com.eztv.powerful.provider"

    invoke-static {v1, v3, v2}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/eztv/powerful/g;->t:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic d(Lcom/eztv/powerful/g;)Lcom/eztv/powerful/a/b;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/g;->x:Lcom/eztv/powerful/a/b;

    return-object v0
.end method

.method static synthetic e(Lcom/eztv/powerful/g;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/eztv/powerful/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/eztv/powerful/g;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/eztv/powerful/g$2;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/g$2;-><init>(Lcom/eztv/powerful/g;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Lcom/eztv/powerful/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/g;->y:Lcom/eztv/powerful/a/a;

    return-void
.end method

.method public a(Lcom/eztv/powerful/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/g;->x:Lcom/eztv/powerful/a/b;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/eztv/powerful/g$3;

    invoke-direct {v1, p0, p1}, Lcom/eztv/powerful/g$3;-><init>(Lcom/eztv/powerful/g;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/e/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/eztv/powerful/g;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/eztv/powerful/g;->u:Z

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/eztv/powerful/g;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u66f4\u65b0\u8f6f\u4ef6"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7b49\u5f85\uff01"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/g;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/eztv/powerful/g$a;

    invoke-direct {v0, p0}, Lcom/eztv/powerful/g$a;-><init>(Lcom/eztv/powerful/g;)V

    invoke-virtual {v0}, Lcom/eztv/powerful/g$a;->start()V

    goto :goto_0
.end method
