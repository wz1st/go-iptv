.class Lcom/f/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/f/a/c$a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/f/a/c$a;->b:Ljava/lang/Integer;

    return-void
.end method
