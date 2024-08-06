.class Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;
.super Landroid/arch/lifecycle/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderViewModel"
.end annotation


# static fields
.field private static final a:Landroid/arch/lifecycle/o$a;


# instance fields
.field private b:Landroid/support/v4/e/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/o",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$1;

    invoke-direct {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Landroid/arch/lifecycle/o$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/arch/lifecycle/n;-><init>()V

    new-instance v0, Landroid/support/v4/e/o;

    invoke-direct {v0}, Landroid/support/v4/e/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/e/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->c:Z

    return-void
.end method

.method static a(Landroid/arch/lifecycle/p;)Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;
    .locals 2

    new-instance v0, Landroid/arch/lifecycle/o;

    sget-object v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Landroid/arch/lifecycle/o$a;

    invoke-direct {v0, p0, v1}, Landroid/arch/lifecycle/o;-><init>(Landroid/arch/lifecycle/p;Landroid/arch/lifecycle/o$a;)V

    const-class v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/o;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/n;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    invoke-super {p0}, Landroid/arch/lifecycle/n;->a()V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->b()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/app/LoaderManagerImpl$a;->a(Z)Landroid/support/v4/content/b;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->b()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->b()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/e/o;

    invoke-virtual {v3, v1}, Landroid/support/v4/e/o;->d(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->b()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$a;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$a;->g()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
