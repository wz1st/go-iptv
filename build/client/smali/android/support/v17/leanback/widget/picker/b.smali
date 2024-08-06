.class public Landroid/support/v17/leanback/widget/picker/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[Ljava/lang/CharSequence;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/b;->a:I

    return v0
.end method

.method public a(I)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/b;->d:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/b;->e:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/b;->d:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/b;->e:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/b;->d:[Ljava/lang/CharSequence;

    return-void
.end method

.method public b()I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/b;->c:I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/b;->b:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/picker/b;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/b;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/picker/b;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/b;->c:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/picker/b;->c:I

    return-void
.end method
