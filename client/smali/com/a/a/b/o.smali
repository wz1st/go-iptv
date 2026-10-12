.class public Lcom/a/a/b/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/o$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/a/a/b/o$a;

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/a/a/b/o;->b:I

    new-array v0, p1, [Lcom/a/a/b/o$a;

    iput-object v0, p0, Lcom/a/a/b/o;->a:[Lcom/a/a/b/o$a;

    const-string v0, "$ref"

    const/4 v1, 0x4

    const-string v2, "$ref"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/a/a/b/o;->a(Ljava/lang/String;III)Ljava/lang/String;

    const-string v0, "@type"

    const-string v1, "@type"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "@type"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/a/a/b/o;->a(Ljava/lang/String;III)Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    new-array v0, p2, [C

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/a/a/b/o;->b:I

    and-int v1, p4, v0

    iget-object v0, p0, Lcom/a/a/b/o;->a:[Lcom/a/a/b/o$a;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/a/a/b/o$a;->c:I

    if-ne p4, v1, :cond_0

    iget-object v1, v0, Lcom/a/a/b/o$a;->b:[C

    array-length v1, v1

    if-ne p3, v1, :cond_0

    iget-object v1, v0, Lcom/a/a/b/o$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, p3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/a/a/b/o$a;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/a/a/b/o;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p3, v0, :cond_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/b/o;->a:[Lcom/a/a/b/o$a;

    new-instance v3, Lcom/a/a/b/o$a;

    invoke-direct {v3, v0, p4}, Lcom/a/a/b/o$a;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/a/a/b/o;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public a([CIII)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/a/a/b/o;->b:I

    and-int/2addr v1, p4

    iget-object v2, p0, Lcom/a/a/b/o;->a:[Lcom/a/a/b/o$a;

    aget-object v3, v2, v1

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    iget v2, v3, Lcom/a/a/b/o$a;->c:I

    if-ne p4, v2, :cond_0

    iget-object v2, v3, Lcom/a/a/b/o$a;->b:[C

    array-length v2, v2

    if-ne p3, v2, :cond_0

    move v2, v0

    :goto_0
    if-ge v2, p3, :cond_4

    add-int v4, p2, v2

    aget-char v4, p1, v4

    iget-object v5, v3, Lcom/a/a/b/o$a;->b:[C

    aget-char v5, v5, v2

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/a/a/b/o$a;->a:Ljava/lang/String;

    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/a/a/b/o$a;

    invoke-direct {v2, v0, p4}, Lcom/a/a/b/o$a;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/a/a/b/o;->a:[Lcom/a/a/b/o$a;

    aput-object v2, v3, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method
