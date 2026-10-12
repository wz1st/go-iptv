.class public Lcom/g/a/c/b/b;
.super Lcom/g/a/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/g/a/c/b/b$a;
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field e:Lcom/g/a/h;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/c/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/c/b/b;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/g/a/n;-><init>()V

    iput v0, p0, Lcom/g/a/c/b/b;->f:I

    iput v0, p0, Lcom/g/a/c/b/b;->g:I

    sget v0, Lcom/g/a/c/b/b$a;->d:I

    iput v0, p0, Lcom/g/a/c/b/b;->h:I

    new-instance v0, Lcom/g/a/h;

    invoke-direct {v0}, Lcom/g/a/h;-><init>()V

    iput-object v0, p0, Lcom/g/a/c/b/b;->e:Lcom/g/a/h;

    return-void
.end method

.method private a(CC)Z
    .locals 3

    if-eq p1, p2, :cond_0

    new-instance v0, Lcom/g/a/c/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was expected, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/g/a/c/b/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/g/a/c/b/b;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/g/a/i;Lcom/g/a/h;)V
    .locals 4

    const/16 v2, 0xd

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/g/a/h;->l()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/g/a/c/b/i;->a:[I

    iget v1, p0, Lcom/g/a/c/b/b;->h:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/g/a/h;->c()C

    move-result v0

    if-ne v0, v2, :cond_2

    sget v0, Lcom/g/a/c/b/b$a;->e:I

    iput v0, p0, Lcom/g/a/c/b/b;->h:I

    :goto_1
    iget v0, p0, Lcom/g/a/c/b/b;->f:I

    iput v0, p0, Lcom/g/a/c/b/b;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/g/a/c/b/b;->a(Ljava/lang/Exception;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    iget v1, p0, Lcom/g/a/c/b/b;->f:I

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/g/a/c/b/b;->f:I

    const/16 v1, 0x61

    if-lt v0, v1, :cond_3

    const/16 v1, 0x66

    if-gt v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/g/a/c/b/b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/g/a/c/b/b;->f:I

    goto :goto_1

    :cond_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x30

    iget v1, p0, Lcom/g/a/c/b/b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/g/a/c/b/b;->f:I

    goto :goto_1

    :cond_4
    const/16 v1, 0x41

    if-lt v0, v1, :cond_5

    const/16 v1, 0x46

    if-gt v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/g/a/c/b/b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/g/a/c/b/b;->f:I

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/g/a/c/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid chunk length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/g/a/c/b/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/g/a/c/b/b;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p2}, Lcom/g/a/h;->c()C

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/g/a/c/b/b;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/g/a/c/b/b$a;->a:I

    iput v0, p0, Lcom/g/a/c/b/b;->h:I

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/g/a/h;->l()I

    move-result v0

    iget v1, p0, Lcom/g/a/c/b/b;->g:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/g/a/c/b/b;->g:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/g/a/c/b/b;->g:I

    iget v1, p0, Lcom/g/a/c/b/b;->g:I

    if-nez v1, :cond_6

    sget v1, Lcom/g/a/c/b/b$a;->b:I

    iput v1, p0, Lcom/g/a/c/b/b;->h:I

    :cond_6
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/g/a/c/b/b;->e:Lcom/g/a/h;

    invoke-virtual {p2, v1, v0}, Lcom/g/a/h;->a(Lcom/g/a/h;I)V

    iget-object v0, p0, Lcom/g/a/c/b/b;->e:Lcom/g/a/h;

    invoke-static {p0, v0}, Lcom/g/a/t;->a(Lcom/g/a/i;Lcom/g/a/h;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lcom/g/a/h;->c()C

    move-result v0

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lcom/g/a/c/b/b;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/g/a/c/b/b$a;->c:I

    iput v0, p0, Lcom/g/a/c/b/b;->h:I

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/g/a/h;->c()C

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/g/a/c/b/b;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/g/a/c/b/b;->f:I

    if-lez v0, :cond_7

    sget v0, Lcom/g/a/c/b/b$a;->d:I

    iput v0, p0, Lcom/g/a/c/b/b;->h:I

    :goto_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/g/a/c/b/b;->f:I

    goto/16 :goto_0

    :cond_7
    sget v0, Lcom/g/a/c/b/b$a;->g:I

    iput v0, p0, Lcom/g/a/c/b/b;->h:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/g/a/c/b/b;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :pswitch_5
    sget-boolean v0, Lcom/g/a/c/b/b;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final a(Ljava/lang/Exception;)V
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/g/a/c/b/b;->h:I

    sget v1, Lcom/g/a/c/b/b$a;->g:I

    if-eq v0, v1, :cond_0

    new-instance p1, Lcom/g/a/c/b/a;

    const-string v0, "chunked input ended before final chunk"

    invoke-direct {p1, v0}, Lcom/g/a/c/b/a;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/g/a/n;->a(Ljava/lang/Exception;)V

    return-void
.end method
