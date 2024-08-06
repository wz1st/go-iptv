.class public Lcom/eztv/powerful/widget/HelpActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f0a00e4

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/widget/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->a:Landroid/widget/Button;

    new-instance v1, Lcom/eztv/powerful/widget/HelpActivity$1;

    invoke-direct {v1, p0}, Lcom/eztv/powerful/widget/HelpActivity$1;-><init>(Lcom/eztv/powerful/widget/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0227

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/widget/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/eztv/powerful/widget/HelpActivity;->b:Landroid/webkit/WebView;

    const-string v1, "https://irunmyway.github.io/2020/06/18/ez/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/eztv/powerful/widget/HelpActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/eztv/powerful/widget/HelpActivity;->a()V

    return-void
.end method
