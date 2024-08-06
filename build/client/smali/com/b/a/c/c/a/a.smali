.class public Lcom/b/a/c/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/c/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/c/n",
        "<",
        "Lcom/b/a/c/c/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/b/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/i",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/b/a/c/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/c/m",
            "<",
            "Lcom/b/a/c/c/g;",
            "Lcom/b/a/c/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    const/16 v1, 0x9c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/c/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/c/c/a/a;->a:Lcom/b/a/c/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/c/c/a/a;-><init>(Lcom/b/a/c/c/m;)V

    return-void
.end method

.method public constructor <init>(Lcom/b/a/c/c/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/c/m",
            "<",
            "Lcom/b/a/c/c/g;",
            "Lcom/b/a/c/c/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/c/a/a;->b:Lcom/b/a/c/c/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/c/g;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/c/g;",
            "II",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/c/n$a",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/b/a/c/c/a/a;->b:Lcom/b/a/c/c/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/c/a/a;->b:Lcom/b/a/c/c/m;

    invoke-virtual {v0, p1, v1, v1}, Lcom/b/a/c/c/m;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/c/g;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/c/a/a;->b:Lcom/b/a/c/c/m;

    invoke-virtual {v0, p1, v1, v1, p1}, Lcom/b/a/c/c/m;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/b/a/c/c/a/a;->a:Lcom/b/a/c/i;

    invoke-virtual {p4, v0}, Lcom/b/a/c/j;->a(Lcom/b/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/b/a/c/c/n$a;

    new-instance v2, Lcom/b/a/c/a/j;

    invoke-direct {v2, p1, v0}, Lcom/b/a/c/a/j;-><init>(Lcom/b/a/c/c/g;I)V

    invoke-direct {v1, p1, v2}, Lcom/b/a/c/c/n$a;-><init>(Lcom/b/a/c/h;Lcom/b/a/c/a/d;)V

    return-object v1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;
    .locals 1

    check-cast p1, Lcom/b/a/c/c/g;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/b/a/c/c/a/a;->a(Lcom/b/a/c/c/g;IILcom/b/a/c/j;)Lcom/b/a/c/c/n$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/b/a/c/c/g;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/b/a/c/c/g;

    invoke-virtual {p0, p1}, Lcom/b/a/c/c/a/a;->a(Lcom/b/a/c/c/g;)Z

    move-result v0

    return v0
.end method
