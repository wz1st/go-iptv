.class public Landroid/support/v7/view/c;
.super Landroid/content/ContextWrapper;


# instance fields
.field private a:I

.field private b:Landroid/content/res/Resources$Theme;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/res/Configuration;

.field private e:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput p2, p0, Landroid/support/v7/view/c;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/view/c;->b:Landroid/content/res/Resources$Theme;

    return-void
.end method

.method private a()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/c;->e:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/c;->d:Landroid/content/res/Configuration;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/c;->e:Landroid/content/res/Resources;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/view/c;->e:Landroid/content/res/Resources;

    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/c;->d:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/c;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/c;->e:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/view/c;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/c;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {p0}, Landroid/support/v7/view/c;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/view/c;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/c;->b:Landroid/content/res/Resources$Theme;

    iget v2, p0, Landroid/support/v7/view/c;->a:I

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v7/view/c;->a(Landroid/content/res/Resources$Theme;IZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/view/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/view/c;->a()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/c;->c:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/c;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/c;->c:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/c;->c:Landroid/view/LayoutInflater;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/c;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/c;->b:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/c;->b:Landroid/content/res/Resources$Theme;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/support/v7/view/c;->a:I

    if-nez v0, :cond_1

    sget v0, Landroid/support/v7/a/a$i;->Theme_AppCompat_Light:I

    iput v0, p0, Landroid/support/v7/view/c;->a:I

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/view/c;->b()V

    iget-object v0, p0, Landroid/support/v7/view/c;->b:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/view/c;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v7/view/c;->a:I

    invoke-direct {p0}, Landroid/support/v7/view/c;->b()V

    :cond_0
    return-void
.end method
