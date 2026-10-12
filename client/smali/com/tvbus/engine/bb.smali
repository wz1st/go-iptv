.class public Lcom/tvbus/engine/bb;
.super Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/f/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    new-instance v0, Lcom/tvbus/engine/bc;

    invoke-direct {v0}, Lcom/tvbus/engine/bc;-><init>()V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x6f

    const/16 v4, 0x68

    const/16 v3, 0x2e

    const/16 v0, 0x12

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x63

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v5, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x6d

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x64

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x7a

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x62

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v5, v0, v1

    invoke-static {v0}, Lcom/f/a/b;->a([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
