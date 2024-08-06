.class public Landroid/support/v4/c/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Landroid/support/v4/c/b$b;


# direct methods
.method public constructor <init>(I[Landroid/support/v4/c/b$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/c/b$a;->a:I

    iput-object p2, p0, Landroid/support/v4/c/b$a;->b:[Landroid/support/v4/c/b$b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/v4/c/b$a;->a:I

    return v0
.end method

.method public b()[Landroid/support/v4/c/b$b;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c/b$a;->b:[Landroid/support/v4/c/b$b;

    return-object v0
.end method
