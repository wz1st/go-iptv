.class final La/a/c/h$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "DATA"

    aput-object v2, v0, v1

    const-string v2, "HEADERS"

    aput-object v2, v0, v6

    const/4 v2, 0x2

    const-string v3, "PRIORITY"

    aput-object v3, v0, v2

    const-string v2, "RST_STREAM"

    aput-object v2, v0, v10

    const-string v2, "SETTINGS"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "PUSH_PROMISE"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "PING"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "GOAWAY"

    aput-object v3, v0, v2

    const-string v2, "WINDOW_UPDATE"

    aput-object v2, v0, v7

    const/16 v2, 0x9

    const-string v3, "CONTINUATION"

    aput-object v3, v0, v2

    sput-object v0, La/a/c/h$b;->a:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, La/a/c/h$b;->c:[Ljava/lang/String;

    move v0, v1

    :goto_0
    sget-object v2, La/a/c/h$b;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, La/a/c/h$b;->c:[Ljava/lang/String;

    const-string v3, "%8s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, La/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    const-string v2, "END_STREAM"

    aput-object v2, v0, v6

    new-array v3, v6, [I

    aput v6, v3, v1

    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    const-string v2, "PADDED"

    aput-object v2, v0, v7

    move v0, v1

    :goto_1
    if-gtz v0, :cond_1

    aget v2, v3, v0

    sget-object v4, La/a/c/h$b;->b:[Ljava/lang/String;

    or-int/lit8 v5, v2, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, La/a/c/h$b;->b:[Ljava/lang/String;

    aget-object v2, v7, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "|PADDED"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    const-string v2, "END_HEADERS"

    aput-object v2, v0, v8

    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    const/16 v2, 0x20

    const-string v4, "PRIORITY"

    aput-object v4, v0, v2

    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    const/16 v2, 0x24

    const-string v4, "END_HEADERS|PRIORITY"

    aput-object v4, v0, v2

    move v2, v1

    :goto_2
    if-ge v2, v10, :cond_3

    new-array v0, v10, [I

    fill-array-data v0, :array_0

    aget v4, v0, v2

    move v0, v1

    :goto_3
    if-gtz v0, :cond_2

    aget v5, v3, v0

    sget-object v6, La/a/c/h$b;->b:[Ljava/lang/String;

    or-int v7, v5, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, La/a/c/h$b;->b:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x7c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, La/a/c/h$b;->b:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    sget-object v6, La/a/c/h$b;->b:[Ljava/lang/String;

    or-int v7, v5, v4

    or-int/lit8 v7, v7, 0x8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, La/a/c/h$b;->b:[Ljava/lang/String;

    aget-object v5, v9, v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x7c

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, La/a/c/h$b;->b:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "|PADDED"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    :goto_4
    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    sget-object v2, La/a/c/h$b;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, La/a/c/h$b;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge p3, v0, :cond_0

    sget-object v0, La/a/c/h$b;->a:[Ljava/lang/String;

    aget-object v0, v0, p3

    move-object v2, v0

    :goto_0
    if-nez p4, :cond_1

    const-string v0, ""

    move-object v1, v0

    :goto_1
    if-eqz p0, :cond_5

    const-string v0, "<<"

    :goto_2
    const-string v3, "%s 0x%08x %5d %-13s %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v1, v4, v0

    invoke-static {v3, v4}, La/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0x%02x"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p4, v0, :cond_3

    sget-object v0, La/a/c/h$b;->b:[Ljava/lang/String;

    aget-object v0, v0, p4

    :goto_3
    if-ne p3, v4, :cond_4

    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_4

    const-string v1, "HEADERS"

    const-string v3, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_1
    if-ne p4, v5, :cond_2

    const-string v0, "ACK"

    move-object v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, La/a/c/h$b;->c:[Ljava/lang/String;

    aget-object v0, v0, p4

    move-object v1, v0

    goto :goto_1

    :pswitch_2
    sget-object v0, La/a/c/h$b;->c:[Ljava/lang/String;

    aget-object v0, v0, p4

    move-object v1, v0

    goto :goto_1

    :cond_3
    sget-object v0, La/a/c/h$b;->c:[Ljava/lang/String;

    aget-object v0, v0, p4

    goto :goto_3

    :cond_4
    if-nez p3, :cond_6

    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_6

    const-string v1, "PRIORITY"

    const-string v3, "COMPRESSED"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    const-string v0, ">>"

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
